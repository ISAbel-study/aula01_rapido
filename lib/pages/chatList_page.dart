//Página de chats
import 'package:aula01/domain/conversa.dart';
import 'package:aula01/infra/conversa_repository.dart';
import 'package:flutter/material.dart';

class ChatlistPage extends StatelessWidget {
  ConversaRepository reposit = ConversaRepository();
  ChatlistPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Conversas")),
      // ListView para listas
      body: ListView.builder(
        itemCount: reposit.conversas.length, //itemCount, tamanho da lista
        itemBuilder: (BuildContext context, int i) {
          Conversa conversa = reposit.conversas[i];
          return ListTile(
          title: Text(conversa.contato),
          subtitle: Text(conversa.ultimaMsg),
          leading: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 129, 175, 255),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            child: Text("PS"),
           ),
           trailing: Column( 
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,//espaços proporcionais
            children: [
              Text(conversa.hora),
              conversa.naoLidas > 0 
              ? Badge(label:Text("${conversa.naoLidas}")) 
              : SizedBox(),
              // reposit.conversa.naoLidas > 0 ? (se for maior que zero mostrar aquir) : apenas vazio
            ],
           ),
          );
        },
      ),
    );
  }
}