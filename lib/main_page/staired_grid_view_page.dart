import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view_example/widget/image_widget.dart';

class StairedGridViewPage extends StatelessWidget {
  const StairedGridViewPage({super.key});

  @override
  Widget build(BuildContext context) => GridView.custom(
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
      );
}
