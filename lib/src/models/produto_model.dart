class ProdutoModel {
  final int? id;
  final String nome;
  final double preco;
  final String descricao;
  final int estoque;
  final String urlFoto;
  final int idCategoria;

  ProdutoModel({
    this.id, 
    required this.nome, 
    required this.preco, 
    required this.descricao, 
    required this.estoque, 
    required this.urlFoto, 
    required this.idCategoria,});

    factory ProdutoModel.fromJson(Map<String, dynamic> json) {
      return ProdutoModel(
        nome: json['nome'], 
        preco: double.tryParse(json['preco'])!, 
        descricao: json['descricao'], 
        estoque: json['estoque'], 
        urlFoto: json['url_foto'], 
        idCategoria: json['categoria']?['id']);
    }

    Map<String,dynamic> toJson(){
      return {
        'id' :id,
        'nome': nome,
        'preco': preco,
        'descricao': descricao,
        'estoque': estoque,
        'url_foto': urlFoto,
        'categoria': idCategoria
      };
    }
} 