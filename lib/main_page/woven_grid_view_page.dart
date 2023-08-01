import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view_example/widget/image_widget.dart';

class WovenGridViewPage extends StatelessWidget {
  const WovenGridViewPage({super.key});

  @override
  Widget build(BuildContext context) => GridView.custom(
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          pattern: const [
            WovenGridTile(1),
            WovenGridTile(
              5 / 7,
              crossAxisRatio: 0.9,
              alignment: AlignmentDirectional.centerEnd,
            ),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: 30,
          (context, index) => const ImageWidget(),
        ),
      );
}
