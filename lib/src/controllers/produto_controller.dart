import 'package:ecommerce_app/src/models/produto_model.dart';
import 'package:ecommerce_app/src/service/produtos_service.dart';
import 'package:flutter/cupertino.dart';

class ProdutoController {
  final ProdutosService _service = ProdutosService();
  Future<List<ProdutoModel>> listarProdutos(BuildContext context) => _service.getAll(context);

}