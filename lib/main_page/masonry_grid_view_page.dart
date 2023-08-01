import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view_example/widget/image_widget.dart';

class MasonryGridViewPage extends StatelessWidget {
  const MasonryGridViewPage({super.key});

  @override
  Widget build(BuildContext context) => MasonryGridView.builder(
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
      );
}
