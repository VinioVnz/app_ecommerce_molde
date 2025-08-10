import 'package:ecommerce_app/src/app/app_menu.dart';
import 'package:ecommerce_app/src/views/base_layout.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> generateRoutes() {
  final Map<String, WidgetBuilder> routes = {};

  for(var item in appMenuItems){
    routes[item.route] = (context) => BaseLayout(body: item.page, title: item.title, );
  }
  return routes;
}