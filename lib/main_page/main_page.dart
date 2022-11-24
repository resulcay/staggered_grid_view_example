import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view_example/widget/image_widget.dart';

import '../widget/custom_bottom_nav_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: customAppBar(),
        bottomNavigationBar: const CustomBottomNavBar(selectedIndex: 0),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              children: items,
            ),
          ),
        ),
      );
}

List<StaggeredGridTile> items = const [
  StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 2,
    child: ImageWidget(),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 1,
    child: ImageWidget(),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1,
    child: ImageWidget(),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1,
    child: ImageWidget(),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 4,
    mainAxisCellCount: 2,
    child: ImageWidget(),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 2,
    child: ImageWidget(),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 1,
    child: ImageWidget(),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1,
    child: ImageWidget(),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1,
    child: ImageWidget(),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 4,
    mainAxisCellCount: 2,
    child: ImageWidget(),
  ),
];

AppBar customAppBar() {
  return AppBar(
    title: const Text("Staggered Grid View"),
    centerTitle: true,
  );
}
