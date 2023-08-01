import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view_example/widget/image_widget.dart';

class QuiltedGridViewPage extends StatelessWidget {
  const QuiltedGridViewPage({super.key});

  @override
  Widget build(BuildContext context) => GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          crossAxisCount: 4,
          pattern: [
            const QuiltedGridTile(2, 2),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
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
