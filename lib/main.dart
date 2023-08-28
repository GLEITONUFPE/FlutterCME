import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CME'),
      
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 200,
            child: Image.asset(
              'assets/images/tesouras.jpg',
              width: 200,
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Ação a ser realizada ao pressionar o botão
              },
              
              child: Text('Pesquisar Funcionário'),
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Ação a ser realizada ao pressionar o botão
              },
              child: Text('Pesquisar Ítem'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Ação a ser realizada ao pressionar o botão
              },
              child: Text('Cadastrar Funcionário'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Ação a ser realizada ao pressionar o botão
              },
              child: Text('Cadastrar Ítem'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Ação a ser realizada ao pressionar o botão
              },
              child: Text('Listar Funcionários'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Ação a ser realizada ao pressionar o botão
              },
              child: Text('Listar Ítens'),
            ),
          ),
                   
        ],
        
      ),
      
    );
    
  }
}