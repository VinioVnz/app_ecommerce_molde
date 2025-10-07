import 'dart:convert';

import 'package:ecommerce_app/src/models/produto_model.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class ProdutosService {
  final String baseUrl = 'http://10.0.2.2:3000';

  Future<List<ProdutoModel>> getAll(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final response = await http.get(Uri.parse('$baseUrl/produtos'));
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      final produtos = data.map((e) => ProdutoModel.fromJson(e)).toList();
      return produtos;
    }
    return [];
  }

  Future<ProdutoModel> create(ProdutoModel produto) async {
    final response = await http.post(
      Uri.parse('$baseUrl/produtos'),
      body: jsonEncode(produto.toJson()),
    );
    if (response.statusCode == 201 || response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      return ProdutoModel.fromJson(json);
    } else {
      throw Exception('Erro ao criar produto. Código: ${response.statusCode}');
    }
  }

  Future<void> update(ProdutoModel produto, int id) async {
    await http.put(
      Uri.parse('$baseUrl/produtos/$id'),
      body: jsonEncode(produto.toJson()),
    );
  }

  Future<void> delete(int id) async{
    final response = await http.delete(Uri.parse('$baseUrl/produtos/$id'));

    if(response.statusCode == 200){
      print('Excluido com sucesso');
    }
  }

  Future<void> getOne(int id) async{
    await http.get(Uri.parse('$baseUrl/produtos/$id'));
  }
}
