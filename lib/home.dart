import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hi"),),
      body: Container(color: Colors.orangeAccent),
      floatingActionButton: OutlinedButton(onPressed: (){}, 
      child: Icon(Icons.add, color: const Color.fromRGBO(91, 176, 216, 1),)),
    );
  }
}

