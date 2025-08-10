import 'package:ecommerce_app/src/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/src/widgets/custom_app_drawer.dart';
import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  final String title;
  final Widget body;
  const BaseLayout({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title, showCarrinho: true,),
      drawer: CustomAppDrawer(),
      body: body,
    );
  }
}