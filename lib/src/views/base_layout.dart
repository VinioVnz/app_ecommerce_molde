import 'package:ecommerce_app/src/app/app_menu.dart';
import 'package:ecommerce_app/src/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/src/widgets/custom_app_drawer.dart';
import 'package:ecommerce_app/src/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BaseLayout extends StatefulWidget {
  final Widget body;
  final String title; 
  const BaseLayout({super.key, required this.body, required this.title});
  @override
  State<BaseLayout> createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> {
  int _selectedIndex = 0;

  void _onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: appMenuItems[_selectedIndex].title,
        showCarrinho: true,
      ),
      body: appMenuItems[_selectedIndex].page,
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onTap: _onTapItem,
      ),
    );
  }
}
