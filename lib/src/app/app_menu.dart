import 'package:ecommerce_app/src/models/menu_model.dart';
import 'package:ecommerce_app/src/views/home_view.dart';
import 'package:ecommerce_app/src/views/products_view.dart';
import 'package:flutter/material.dart';

final List<MenuModel> appMenuItems = [
  MenuModel(
    title: 'Menu', 
    icon: Icons.home, 
    route: '/home', 
    page: HomeView(),
    ),
  MenuModel(
    title: 'Produtos', 
    icon: Icons.shopping_bag_outlined, 
    route: '/produtos', 
    page: ProductsView(),
    ),

];