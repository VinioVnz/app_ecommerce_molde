import 'package:ecommerce_app/src/colors/cores.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final bool? showCarrinho;
  const CustomAppBar({super.key, required this.title,this.showCarrinho});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 3.5,
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
      backgroundColor: Cores().mainColor,
      foregroundColor: Cores().foregroundColor,
      shadowColor: const Color.fromARGB(200, 8, 8, 8),
      centerTitle: true,
      actions: [
        if(showCarrinho == true)...[
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
        ]
      ],
    );
  }
}