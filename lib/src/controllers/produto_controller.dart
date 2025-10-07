import 'package:ecommerce_app/src/models/produto_model.dart';
import 'package:ecommerce_app/src/service/produtos_service.dart';
import 'package:flutter/cupertino.dart';

class ProdutoController {
  final ProdutosService _service = ProdutosService();
  Future<List<ProdutoModel>> listarProdutos(BuildContext context) => _service.getAll(context);
  Future<void> criar(ProdutoModel produto) => _service.create(produto);
  Future<void> atualizar(ProdutoModel produto, int id) => _service.update(produto, id);
  Future<void> deletar(int id) => _service.delete(id);
  Future<void> buscar(int id) => _service.getOne(id);

}