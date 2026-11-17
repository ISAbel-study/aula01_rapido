//entidade Product
/*Atributos
  * Identificador;
  * Nome;
  * Categoria;
  * Preço;
  * Avaliação;
  * URL da imagem;
*/

class Product {
  String id;
  String nome;
  String categoria;
  double preco;
  double avaliacao;
  String URLimg;

  Product({
    required this.id,
    required this.nome,
    required this.categoria,
    required this.preco,
    required this.avaliacao,
    required this.URLimg,
  });
}