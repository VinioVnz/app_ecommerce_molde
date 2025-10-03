import 'package:ecommerce_app/src/colors/cores.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? showCarrinho;
  const CustomAppBar({super.key, required this.title, this.showCarrinho});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 80,
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Image.asset(
          'assets/images/logo.png',
          width: 40, // aumenta largura
          height: 40, // aumenta altura
          fit: BoxFit.contain,
        ),
      ),
      elevation: 3.5,
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      backgroundColor: Cores().foregroundColor,
      foregroundColor: Cores().mainColor,
      shadowColor: const Color.fromARGB(200, 8, 8, 8),
      centerTitle: true,
      actions: [
        if (showCarrinho == true) ...[
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ],
    );
  }
}
