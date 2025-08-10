import 'package:ecommerce_app/src/app/app_menu.dart';
import 'package:ecommerce_app/src/colors/cores.dart';
import 'package:flutter/material.dart';

class CustomAppDrawer extends StatelessWidget {
  const CustomAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 200,
            color: Cores().mainColor,
            child: Padding(padding: EdgeInsets.symmetric(vertical: 8),
            child: Icon(Icons.shopping_bag, color: Cores().foregroundColor, size: 100,),
            ),
            ),
          ...appMenuItems.map(
            (item) => ListTile(
              leading: Icon(item.icon, color: Cores().mainColor),
              title: Text(
                item.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, item.route);
              },
            ),
          ),
        ],
      ),
    );
  }
}
