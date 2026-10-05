//Página de chats
import 'package:flutter/material.dart';

class ChatlistPage extends StatelessWidget {
  const ChatlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Conversas")),
      body: ListView(
        children: [
          ListTile(
          title: Text("Pessoa 1 sobrenome"),
          subtitle: Text("Assuntos importantes"),
          leading: CircleAvatar(
            child: Text(("PS")),
            backgroundColor: const Color.fromARGB(255, 129, 175, 255),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
           ),
           trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("18:00"),Text("1")],
           ),
          ),
        ],
      ),
    );
  }
}