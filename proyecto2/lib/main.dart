import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica #2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Practica #2'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Chess Board
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Column 1
                  Expanded(
                    child: Column(
                      children: [
                        ChessCell(color: Colors.blue),
                        ChessCell(color: Colors.red),
                        ChessCell(color: Colors.blue),
                        ChessCell(color: Colors.red),
                      ],
                    ),
                  ),
                  // Column 2
                   Expanded(
                    child: Column(
                      children: [
                        ChessCell(color: Colors.red),
                        ChessCell(color: Colors.blue),
                        ChessCell(color: Colors.red),
                        ChessCell(color: Colors.blue),
                      ],
                    ),
                  ),
                  // Column 3
                  Expanded(
                    child: Column(
                      children: [
                        ChessCell(color: Colors.blue),
                        ChessCell(color: Colors.red),
                        ChessCell(color: Colors.blue),
                        ChessCell(color: Colors.red),
                      ],
                    ),
                  ),
                  // Column 4
                  Expanded(
                    child: Column(
                      children: [
                        ChessCell(color: Colors.red),
                        ChessCell(color: Colors.blue),
                        ChessCell(color: Colors.red),
                        ChessCell(color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChessCell extends StatelessWidget {
  final Color color;

  const ChessCell({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
      ),
    );
  }
}