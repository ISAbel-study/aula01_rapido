//Lista de produtos usando a entidade Product
//método p/ retornar todos produtos cadastrados no repository
import '../../domain/entities/product.dart';

class ProductRepository {
  //BD
  List<Product> produtos = [
    Product(
      id: '1',
      nome: "Máscara de cílios",
      categoria: "Beleza",
      preco: 9.99,
      avaliacao: 4.5,
      URLimg:
          'https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp',
    ),
    Product(
      id: '2',
      nome: "Iluminador",
      categoria: "Maquiagem",
      preco: 20.50,
      avaliacao: 4.9,
      URLimg:
          'https://images.unsplash.com/photo-1547887538-047f814bfb64?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    ),
    Product(
      id: '3',
      nome: "Corretivo Líquido",
      categoria: "Maquiagem",
      preco: 12.20,
      avaliacao: 5.0,
      URLimg:
          'https://i.pinimg.com/736x/87/31/bd/8731bd3fd5726f39e25ab20e5c157f73.jpg',
    ),
    Product(
      id: '2',
      nome: "Iluminador",
      categoria: "Maquiagem",
      preco: 20.50,
      avaliacao: 4.9,
      URLimg:
          'https://images.unsplash.com/photo-1547887538-047f814bfb64?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    ),
  ];

  void adiciona(Product produto) => produtos.add(produto);
  List<Product> pegarTodos() { //método p/ retornar todos produtos cadastrados no repository
    return produtos;
  }

}