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

import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catálogo de Produtos"), ), //colocar ícone dps
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 10),
            children: [
              Card( 
                child: ListTile(
                  title: Text("nome do produto"),
                  subtitle: Column( //dentro de subtitle vem uma Column
                    children: [
                      Text("categoria do produto")
                    ],
                  ), 
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}










//Dps de implementar o Bloc, atualizar a página de acordo com os estados
/* Fluxo esperado:
* Loading: indicador de carregamento
* Sucess: retorno com a lista de produto, use ListView e ListTile
* Failure: msg de erro caso não consiga carregar os products
*/