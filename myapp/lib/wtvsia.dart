// this is also not the lab
import 'package:flutter/material.dart';

void main() {
  runApp(const Qitty());
}

class Qitty extends StatelessWidget {
  const Qitty({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WordScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WordScreen extends StatefulWidget {
  const WordScreen({super.key});

  @override
  State<WordScreen> createState() => _WordScreenState();
}

class _WordScreenState extends State<WordScreen> {
  final List<String> words = [
    'Anjing',
    'Babi',
    'Cibai',
    'Dumb Bitch',
    'White Trash',
    'Fucking Idiot',
    'Lembab',
    'Bodoh',
  ];

  int currentIndex = 0;

  void changeWord() {
    setState(() {
      currentIndex = (currentIndex + 1) % words.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Dose of Words of Wisdom'),
        backgroundColor: Colors.tealAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              words[currentIndex],
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: changeWord,
              child: const Text('Next Up'),
            ),
          ],
        ),
      ),
    );
  }
}
