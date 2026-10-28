//lab updated as of 23.10
import 'package:flutter/material.dart';

void main() {
  runApp(const KittyCat());
}

class KittyCat extends StatelessWidget {
  const KittyCat({super.key});

  //declaring a function
  void doWTV(){
    //print cat
    print("I am a cat");
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: doWTV,
            icon: const Icon(Icons.menu),
          ),
          backgroundColor: const Color.fromARGB(255, 56, 72, 163),
          title: const Text("Cats I adore"),
          centerTitle: true, 
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            ClipOval(
              child: Image.asset(name)
            )
          ],)
      )
    )
  }