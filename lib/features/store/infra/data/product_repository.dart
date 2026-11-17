//Lista de produtos usando a entidade Product
//método p/ retornar todos produtos cadastrados no repository
import '../../domain/entities/product.dart';

class ProductRepository {
  //BD
  List<Product> produtos = [
    Product(
      id: '1',
      nome: "Perfume",
      categoria: "Beleza",
      preco: 9.99,
      avaliacao: 4.5,
      URLimg:
          'https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp',
    ),
    Product(
      id: '2',
      nome: "Perfume",
      categoria: "Beleza",
      preco: 9.99,
      avaliacao: 4.5,
      URLimg:
          'https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp',
    ),
  ];

  void adiciona(Product produto) => produtos.add(produto);
  List<Product> pegarTodos() { //método p/ retornar todos produtos cadastrados no repository
    return produtos;
  }

}