import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../widget/custom_bottom_nav_bar.dart';
import '../widget/image_widget.dart';
import 'main_page.dart';

class StairedGridViewPage extends StatelessWidget {
  const StairedGridViewPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: customAppBar(),
        bottomNavigationBar: const CustomBottomNavBar(selectedIndex: 4),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.custom(
                gridDelegate: SliverStairedGridDelegate(
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 45,
                  startCrossAxisDirectionReversed: true,
                  pattern: [
                    const StairedGridTile(.5, 1),
                    const StairedGridTile(.5, 3 / 4),
                    const StairedGridTile(1, 10 / 4),
                  ],

                  // crossAxisCount: 3,
                  // pattern: [
                  //   const QuiltedGridTile(1, 1),
                  //   const QuiltedGridTile(1, 1),
                  //   const QuiltedGridTile(1, 1),
                  //   const QuiltedGridTile(1, 1),
                  //   const QuiltedGridTile(2, 2),
                  //   const QuiltedGridTile(1, 1),
                  //   const QuiltedGridTile(1, 1),
                  //   const QuiltedGridTile(1, 1),
                  //   const QuiltedGridTile(1, 1),
                  // ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  childCount: 30,
                  (context, index) => const ImageWidget(),
                ),
              )),
        ),
      );
}
