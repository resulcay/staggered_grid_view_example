import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:staggered_grid_view_example/main_page/main_page.dart';
import 'package:staggered_grid_view_example/provider/bottom_nav_bar__index_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavBarIndexProvider()),
      ],
      child: MaterialApp(
        title: 'Staggered Grid View',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: const MainPage(),
      ),
    );
  }
}
