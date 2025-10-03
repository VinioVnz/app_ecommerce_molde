import 'package:ecommerce_app/src/app/app_menu.dart';
import 'package:ecommerce_app/src/colors/cores.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.selectedIndex,
      onTap: widget.onTap,
      selectedItemColor: Cores().mainColor,
      unselectedItemColor: Colors.grey,
      items: appMenuItems.map((item) {
        return BottomNavigationBarItem(
          icon: Icon(item.icon),
          label: item.title,
        );
      }).toList(),
    );
  }
}
