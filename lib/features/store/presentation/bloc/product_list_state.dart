//arquivo com os estados:
//Estado é a stiuação atual da tela, que é liberada pelo Bloc quando ele recebe um evento
/*Loading: carregamento dos produtos
Success: carregamento concluído com sucesso, cm a lista de produtos vindo do repositório
Failure: erro durante a recuperação dos produtos
*/
import 'package:aula01/features/store/domain/entities/product.dart';

sealed class ProductListState {}

//Estado Carregando
class ProductListLoad extends ProductListState {}

//Estado Sucess
class ProductListSucess extends ProductListState {
  final List<Product> produtos;
  //exibe produtos
  ProductListSucess({required this.produtos});
}

//Estado Failure
class ProductListFailure extends ProductListState {
  final String mensg;
  //exibe uma mensagem de erro
  ProductListFailure({required this.mensg});
}