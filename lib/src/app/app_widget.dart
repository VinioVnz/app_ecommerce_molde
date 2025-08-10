import 'package:ecommerce_app/src/app/app_routes.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce',
      initialRoute: '/home',
      routes: generateRoutes(),
      debugShowCheckedModeBanner: false,
    );
  }
}