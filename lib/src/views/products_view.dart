import 'package:ecommerce_app/src/controllers/produto_controller.dart';
import 'package:ecommerce_app/src/models/produto_model.dart';
import 'package:ecommerce_app/src/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  void initState() {
    _loadProdutos();
  }

  void _loadProdutos() async {
    final lista = await _controller.listarProdutos(context);
    setState(() {
      produtos = lista;
    });
  }

  List<ProdutoModel> produtos = [];
  ProdutoController _controller = ProdutoController();
  @override
  Widget build(BuildContext context) {
    for (var produto in produtos) {
      print('Produtos: ${produto.nome}');
      print('Preco: ${produto.preco}');
    }

    return Padding(
      padding: EdgeInsetsGeometry.all(12),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          
        ),
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          final produto = produtos[index];
          return ProductCard(
            imageUrl: produto.urlFoto,
            nome: produto.nome,
            preco: produto.preco,
          );
        },
      ),
    );
  }
}
