import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view_example/widget/image_widget.dart';

class AlignedGridViewPage extends StatelessWidget {
  const AlignedGridViewPage({super.key});

  @override
  Widget build(BuildContext context) => AlignedGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemCount: 30,
        itemBuilder: (context, index) => const ImageWidget(),
      );

  // child: AlignedGridView.custom(
  //   gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
  //       crossAxisCount: 5),
  //   // gridDelegate: const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
  //   //     maxCrossAxisExtent: 50),
  //   mainAxisSpacing: 8,
  //   crossAxisSpacing: 8,
  //   itemCount: 30,
  //   itemBuilder: (context, index) => const ImageWidget(),
  // ),

  // child: AlignedGridView.extent(
  //   maxCrossAxisExtent: 150,
  //   mainAxisSpacing: 8,
  //   crossAxisSpacing: 8,
  //   itemCount: 30,
  //   itemBuilder: (context, index) => const ImageWidget(),
  // ),;
}
