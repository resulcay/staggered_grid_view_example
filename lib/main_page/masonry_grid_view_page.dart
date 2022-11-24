import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../widget/custom_bottom_nav_bar.dart';
import '../widget/image_widget.dart';
import 'main_page.dart';

class MasonryGridViewPage extends StatelessWidget {
  const MasonryGridViewPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: customAppBar(),
        bottomNavigationBar: const CustomBottomNavBar(selectedIndex: 1),
        body: Padding(
          padding: const EdgeInsets.all(8.0),

          child: MasonryGridView.builder(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            // gridDelegate: const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
            //   maxCrossAxisExtent: 150,
            // ),
            itemCount: 30,
            itemBuilder: (context, index) => const ImageWidget(),
          ),

          // child: MasonryGridView.count(
          //   crossAxisCount: 5,
          //   mainAxisSpacing: 10,
          //   crossAxisSpacing: 10,
          //   itemCount: 30,
          //   itemBuilder: (context, index) => const ImageWidget(),
          // ),
        ),
      );
}
