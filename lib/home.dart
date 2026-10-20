import 'package:aula01/domain/conversa.dart';
import 'package:aula01/infra/conversa_repository.dart';
import 'package:aula01/pages/chatList_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PDM"),),
      body: Column(
        children: [
          Text("Módulos"),
          Expanded(
            child: ListView(
              //redirecionamento do chat?
              // Já que a lista de chats estará aqui...?
              children: [
                ListTile(
                  title: Text("Chat"),
                  trailing: IconButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatlistPage()),
                    );
                  }, icon: Icon(Icons.arrow_forward)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

