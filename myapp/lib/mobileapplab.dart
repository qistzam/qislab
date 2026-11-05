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
        backgroundColor: const Color.fromARGB(0, 216, 196, 241),
        appBar: AppBar(
          leading: IconButton(
            onPressed: doWTV,
            icon: const Icon(Icons.menu),
          ),
          backgroundColor: const Color.fromARGB(255, 191, 224, 251),
          title: const Text("Kitty Cat"),
        ),
         body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
               const SizedBox(height:20),
               Image.asset(
                 'assets/images/Garfield-Circle-Badge.webp',
                  width: 200,
                  height: 267,
                  fit: BoxFit.contain,
              ),
              const SizedBox(height: 10),
              const Text(
                "Fictional Cats I Adore",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(88.888),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.pets, size: 17, color: Color.fromARGB(255, 51, 30, 111)),
                    SizedBox(width: 4),
                    Text(
                      "Cats",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                  ],             
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 35,
                  runSpacing: 25,
                  children: [
                    Container(
                      width: 155,
                      height: 190,
                      padding: const EdgeInsets.all(22),
                      decoration: const BoxDecoration(
                        color:  Color.fromARGB(255, 243, 218, 171),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/kiki.png',
                            width: 70,
                          ),
                          const SizedBox(height: 10),
                          const Text("Kiki",
                          textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 155,
                      height: 190,
                      padding: const EdgeInsets.all(22),
                      decoration: const BoxDecoration(
                        color:  Color.fromARGB(255, 217, 171, 243),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Pink_Panther.png',
                            width: 70,
                          ),
                          const SizedBox(height: 10),
                          const Text("Pink Panther",
                          textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 155,
                      height: 190,
                      padding: const EdgeInsets.all(22),
                      decoration: BoxDecoration(color:  Color.fromARGB(255, 164, 242, 243)),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Gball.webp',
                           width: 70,
                         ),
                          const SizedBox(height: 10),
                          const Text("Gumball",
                          textAlign: TextAlign.center,
                          ),
                      ]
                      ),
                   ),
                    Container(
                      width: 155,
                      height: 190,
                      padding: const EdgeInsets.all(22),
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 147, 179, 228)),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Tom_Tom_and_Jerry.png',
                           width: 70,
                        ),
                         const SizedBox(height: 10),
                         const Text("Tom and Jerry",
                         textAlign: TextAlign.center,
                         ),
                      ]
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}