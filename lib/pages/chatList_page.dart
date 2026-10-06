//Página de chats
import 'package:aula01/domain/conversa.dart';
import 'package:flutter/material.dart';

class ChatlistPage extends StatelessWidget {
  List<Conversa> conversas = [
    Conversa(
      contato: "Veira", 
      ultimaMsg: "Venha para cá", 
      hora: "11:30", 
      naoLidas: 2,
    ),
    Conversa(
      contato: "Pietro", 
      ultimaMsg: "Muitas coisas no projeto", 
      hora: "17:00", 
      naoLidas: 5,
    ),
  ];
  ChatlistPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Conversas")),
      body: ListView.builder(
        itemCount: conversas.length, //itemCount, tamanho da lista
        itemBuilder: (BuildContext context, int i) {
          Conversa conversa = conversas[i];
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
              Badge(label:Text("${conversa.naoLidas}")),
            ],
           ),
          );
        },
      ),
    );
  }
}