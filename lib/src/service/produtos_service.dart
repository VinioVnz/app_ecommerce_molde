import 'dart:convert';

import 'package:ecommerce_app/src/models/produto_model.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class ProdutosService {
  final String baseUrl = 'http://10.0.2.2:3000';

  Future<List<ProdutoModel>> getAll(BuildContext context) async{
    final prefs = await SharedPreferences.getInstance();
    final response = await http.get(Uri.parse('$baseUrl/produtos')
    );
    if(response.statusCode ==200){
      final List data = jsonDecode(response.body);
      final produtos = data.map((e)=> ProdutoModel.fromJson(e)).toList();
      return produtos;
    } 
    return [];
  }
}