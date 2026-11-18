/*arquivo do bloc -> gerencia os eventos, os estados
e o que vai sair na página*/
//Bloc recebe eventos, executa a lógica e libera estados
/*
  * página iniciou -> libera evento de inicializar
  * evento liberado -> estado Loading, 3 seg de espera
  * pegar lista de products no repository -> liberar estado Sucess
  * estado Sucess liberado -> retorno produtos
  * caso erro -> libera estado Failure
*/
import 'package:aula01/features/store/domain/entities/product.dart';
import 'package:aula01/features/store/infra/data/product_repository.dart';
import 'package:aula01/features/store/presentation/bloc/product_list_event.dart';
import 'package:aula01/features/store/presentation/bloc/product_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final ProductRepository produtoRepo = ProductRepository();

  ProductListBloc() : super(ProductListLoad()) { //primeiro estado
    /**1 - Inicializar */
    //quando a página iniciar, vai liberar o evento de inicializar
    on<ProductListInitialize>((event, emit) async {
      /**2 - Emite estado Loading */
      emit(ProductListLoad()); //após a página iniciar, vai liberar o estado de carregamento
      await Future.delayed(Duration(seconds: 3)); //espera 3 segundos

      List<Product> dados = produtoRepo.produtos; //pega a lista de produtos do repositório
      if(dados.isNotEmpty){
        /**3 - Emite estado Sucess */
        emit(ProductListSucess(produtos: dados)); //se a lista de produtos não estiver vazia, libera o estado de sucesso
      } else {
        /**4 - Emite estado Failure */
        emit(ProductListFailure(mensg: "Sem dados!")); //se a lista de produtos estiver vazia, libera o estado de falha
      }

    });

    //evento de inicializar
    add(ProductListInitialize());
  }

}