import 'package:flutter/material.dart';
import 'package:flutter_tes/screens/cadastro_funcionario_screen.dart';
import 'package:flutter_tes/screens/cadastro_item_screen.dart';
import 'package:flutter_tes/screens/listar_funcionario_screen.dart';



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
        // ignore: prefer_const_constructors
        title: Text('CME - Central de Material Esterilizado'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Navegação ao pressionar o botão
              },
              style: ElevatedButton.styleFrom(
      minimumSize: Size(70, 70), // Defina a altura desejada aqui
    ),
              child: Text('Pesquisar Funcionário'),
              
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Navegação ao pressionar o botão
              },
              style: ElevatedButton.styleFrom(
      minimumSize: Size(70, 70), // Definição da altura do botão
    ),
              child: Text('Pesquisar Ítem'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CadastroFuncionarioScreen(),));// Navegação ao pressionar o botão
              },
              style: ElevatedButton.styleFrom(
      minimumSize: Size( 70,70), // Defina a altura desejada aqui
    ),
              child: Text('Cadastrar Funcionário'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CadastroItemScreen(),));  // Ação a ser realizada ao pressionar o botão
              },
              style: ElevatedButton.styleFrom(
      minimumSize: Size(70, 70), // Defina a altura desejada aqui
    ),
              child: Text('Cadastrar Ítem'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
              // Ação a ser realizada ao pressionar o botão
              },
              style: ElevatedButton.styleFrom(
      minimumSize: Size(70, 70), // Defina a altura desejada aqui
    ),
              child: Text('Listar Funcionários'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Ação a ser realizada ao pressionar o botão
              },
              style: ElevatedButton.styleFrom(
      minimumSize: Size(70, 70), // Defina a altura desejada aqui
    ),
              child: Text('Listar Ítens'),
            ),
          ),
                   
        ],
        
      ),
      // Container(
      //       width: 200,
      //       height: 200,
      //       child: Image.asset(
      //         'assets/images/tesouras.jpg',
      //         width: 200,
      //         height: 200,
      //       ),
      //     ),
    );
    
  }
}


