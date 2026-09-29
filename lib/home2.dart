import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Aula Inicial"),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Aula do Semestre 4", style: TextStyle(fontSize: 22),),
                    SizedBox(height: 12),
                    Text("Widgets e Composição", style: TextStyle(fontSize: 17),),
                    SizedBox(height: 9),
                    Text("Aprendendo a Construir", style: TextStyle(fontSize: 16),),
                    SizedBox(height: 9),
                    Text("Interfaces com Flutter", style: TextStyle(fontSize: 15),),
                    SizedBox(height: 9),
                    ElevatedButton(onPressed: () {}, child: Text("Começar Aula")),
                    SizedBox(height: 9),
                  ],
                ),
              )
            ),
            Row(children: [
              Card(
                child: SizedBox(
                  height: 70,
                  width: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.book), 
                      Text("Aulas"), 
                      Text("12"),],
                                ),
                ),
            ),
            // Card 2 aqui
            Card(
              child: SizedBox(
                height: 70,
                width: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check), 
                    Text("Exercícios"), 
                    Text("12")],
                            ),
              ),)
            ],
           )
          ],
        ),
      ),
    );
  }
}