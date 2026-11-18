//Fazer uma tela chamada ProductListPage que deve ser um StatelessWidget.
//usar o widget Scaffold para estruturar a página
//No body do Scaffold, colocar  um ListView contendo alguns ListTile com informações estáticas de produtos
//Pra mostrar as imagens dos produtos, use o widget Image.network(carregar imagens diretamente de uma URL da internet)
//Add o import dessa página no home.dart; um novo item à lista de módulos em home.dart redirecionando para a nova página criada

/*Dicas para o ListView
 * nome do produto: Title
 Estrutura:
  * Subtitle
      -> Column
          -> Tat 
          -> Row
*/

//Tela 'produz' eventos e recebe estados

import 'package:aula01/features/store/domain/entities/product.dart';
//porque está 'avisando' que não está sendo usado algum event? especificamente dando aviso no import do event?
//
import 'package:aula01/features/store/presentation/bloc/product_list_event.dart';
import 'package:aula01/features/store/presentation/bloc/product_list_state.dart';
import 'package:aula01/features/store/presentation/bloc/product_list_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override //'override' indica que o método está sendo sobrescrito da classe pai
  Widget build(BuildContext context) {
      return BlocProvider( //
        create:(BuildContext context) => ProductListBloc(), //cria o bloc e disponibiliza para a árvore de widgets
        child:  Scaffold(
        appBar: AppBar(title: const Text("Catálogo de Produtos", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
        toolbarHeight: 60, //altura da toolbar
        backgroundColor: const Color.fromARGB(255, 237, 145, 185), //cor da toolbar
        actions: [
           IconButton(
             icon: const Icon(Icons.shopping_bag_outlined),
             onPressed: () {},
           ),
        ],
        ), //colocar ícone dps, colocar cor dps
        body: BlocBuilder<ProductListBloc, ProductListState>(
          builder: (context, state) {
            //joguinho de if/else

            //1 - Se estado for igual Sucess
            if (state is ProductListSucess) {
              //constrói a lista de acordo com os dados de forma dinâmica
              return  ListView.builder(
              itemCount: state.produtos.length,
              itemBuilder: (BuildContext context, int i) {
                Product produto = state.produtos[i];
                return  ListTile( //junto com leading(icone ou img pequena), title, subtitle, trailing, onTap
                  leading: Image.network(
                      produto.URLimg,
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                      ),//leading - img pequena
                      title: Text("${produto.nome}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      subtitle: Column( //dentro de subtitle vem uma Column
                        crossAxisAlignment: CrossAxisAlignment.start, //para alinhar os textos à esquerda
                        children: [
                          Text("${produto.categoria}"),
                          //inserir Row para preço + avaliações
                          Row(
                            children: [
                              Text("RS ${produto.preco}", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 205, 108, 150)),),
                              SizedBox(width: 10), //espaço entre o preco e a avaliação
                              Icon(Icons.star, color: const Color.fromARGB(255, 252, 229, 50), size: 16), //ícone da estrela
                              Text("${produto.avaliacao}"),
                            ],
                        )
                      ],
                    ),
                    trailing: Icon(Icons.chevron_right),
                  );
                },
              );
            }         
          
            //2 - Se estado for igual a Failure
            if (state is ProductListFailure){
              //retorno da falha/erro
              return Column(
                mainAxisAlignment: MainAxisAlignment.center, //alinhar no centro
                children: [
                  Center(child: Text("(${state.mensg})", style: TextStyle(fontSize: 16))
                )],
              );
            }

            //3 - Se estado for igual a Loading
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: CircularProgressIndicator()
              )],
            );

          }, 
        ),
      ),
    );
  }
}

/**
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 10),
              children: [
                Card( 
                  child: ListTile( //junto com leading(icone ou img pequena), title, subtitle, trailing, onTap

                    leading: Image.network(
                      'https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp',
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),//leading - img pequena
                    title: Text("nome do produto", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    subtitle: Column( //dentro de subtitle vem uma Column
                      crossAxisAlignment: CrossAxisAlignment.start, //para alinhar os textos à esquerda
                      children: [
                        Text("categoria do produto"),
                        //inserir Row para preço + avaliações
                        Row(
                          children: [
                            Text("RS 9.99"),
                            SizedBox(width: 10), //espaço entre o preco e a avaliação
                            Text("4.5"),
                          ],
                        )
                      ],
                    ),
                    trailing: Icon(Icons.chevron_right),
                  ),
                )
              ],
            ), */

/**
     return Scaffold(
      appBar: AppBar(
        title: const Text("Catálogo de Produtos"),
      ), //colocar ícone dps, colocar cor dps
      body:
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 10),
            children: [
              Card( 
                child: ListTile( //junto com leading(icone ou img pequena), title, subtitle, trailing, onTap

                  leading: Image.network(
                    'https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp',
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),//leading - img pequena
                  title: Text("nome do produto", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  subtitle: Column( //dentro de subtitle vem uma Column
                    crossAxisAlignment: CrossAxisAlignment.start, //para alinhar os textos à esquerda
                    children: [
                      Text("categoria do produto"),
                      //inserir Row para preço + avaliações
                      Row(
                        children: [
                          Text("RS 9.99"),
                          SizedBox(width: 10), //espaço entre o preco e a avaliação
                          Text("4.5"),
                        ],
                      )
                    ],
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
              )
            ],
          ),
      );
 */

 /*Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
          ),*/

//Dps de implementar o Bloc, atualizar a página de acordo com os estados
/* Fluxo esperado:
* Loading: indicador de carregamento
* Sucess: retorno com a lista de produto, use ListView e ListTile
* Failure: msg de erro caso não consiga carregar os products
*/