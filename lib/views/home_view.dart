import 'package:flutter/material.dart';
import 'package:resto/views/cart_view_body.dart';
import 'package:resto/views/category_view_body.dart';
import 'package:resto/views/messages_view_body.dart';
import 'package:resto/views/profile_view_body.dart';
import 'package:resto/widgets/custom_navigation_bar.dart';
import 'package:resto/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentPageIndex = 0;

  List<Widget> navigationItems = const [
    HomeViewBody(),
    CartViewBody(),
    CategoryViewBody(),
    MessagesViewBody(),
    ProfileViewBody(),
  ];

  void onNavBarTap(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: navigationItems[currentPageIndex],
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: currentPageIndex,
          onTap: onNavBarTap,
        ),
      ),
    );
  }
}
