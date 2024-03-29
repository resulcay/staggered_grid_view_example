import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/bottom_nav_bar__index_provider.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        pageController.jumpToPage(value);
        Provider.of<BottomNavBarIndexProvider>(context, listen: false)
            .changeIndex(value);
      },
      currentIndex: Provider.of<BottomNavBarIndexProvider>(context).index,
      selectedItemColor: Colors.white,
      items: [
        _navBarItem("Staggered", Icons.stadium),
        _navBarItem("Masonry", Icons.wallet),
        _navBarItem("Aligned", Icons.align_horizontal_center),
        _navBarItem("Quilted", Icons.carpenter),
        _navBarItem("Staired", Icons.stairs),
        _navBarItem("Woven", Icons.where_to_vote),
      ],
    );
  }

  BottomNavigationBarItem _navBarItem(String title, IconData icon) {
    return BottomNavigationBarItem(
      label: title,
      icon: Icon(
        icon,
        size: 40,
        color: Colors.green,
      ),
    );
  }
}
