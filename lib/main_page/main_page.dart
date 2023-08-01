import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:staggered_grid_view_example/main_page/aligned_grid_view_page.dart';
import 'package:staggered_grid_view_example/main_page/masonry_grid_view_page.dart';
import 'package:staggered_grid_view_example/main_page/quilted_grid_view_page.dart';
import 'package:staggered_grid_view_example/main_page/staggered_grid_view_page.dart';
import 'package:staggered_grid_view_example/main_page/staired_grid_view_page.dart';
import 'package:staggered_grid_view_example/main_page/woven_grid_view_page.dart';
import 'package:staggered_grid_view_example/provider/bottom_nav_bar__index_provider.dart';
import 'package:staggered_grid_view_example/widget/custom_bottom_nav_bar.dart';
import 'package:staggered_grid_view_example/widget/image_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      appBar: customAppBar(),
      bottomNavigationBar: CustomBottomNavBar(pageController: pageController),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PageView(
          controller: pageController,
          onPageChanged: (index) =>
              Provider.of<BottomNavBarIndexProvider>(context, listen: false)
                  .changeIndex(index),
          children: const [
            StaggeredGridViewPage(),
            MasonryGridViewPage(),
            AlignedGridViewPage(),
            QuiltedGridViewPage(),
            StairedGridViewPage(),
            WovenGridViewPage(),
          ],
        ),
      ),
    );
  }
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
    title: const Text("Package Examples"),
    centerTitle: true,
  );
}
