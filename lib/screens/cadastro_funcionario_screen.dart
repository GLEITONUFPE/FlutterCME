import 'package:flutter/material.dart';
import '../classes/funcionario.dart';



class CadastroFuncionarioScreen extends StatefulWidget {
  @override
  _CadastroFuncionarioScreenState createState() =>
      _CadastroFuncionarioScreenState();
}

class _CadastroFuncionarioScreenState
    extends State<CadastroFuncionarioScreen> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _cargoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Funcionário'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 8),
                Text(
                  'Dados do Funcionário',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              width: 600,
              child:
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(labelText: 'Nome'),
              textInputAction: TextInputAction.next,
              maxLength: 200,
            ),
            ),
            SizedBox(height: 16),
            Container(
              width: 600,
              child:
            TextField(
              controller: _cargoController,
              decoration: InputDecoration(labelText: 'Cargo'),
              textInputAction: TextInputAction.next,
              maxLength: 100,
            ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _cadastrarFuncionario();
              },
              child: Text('Cadastrar Funcionário'),
            ),
            Container(height: 16),
            ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Voltar para a tela anterior
                  },
                  child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }

  void _cadastrarFuncionario() {
    // lógica para cadastrar o funcionário
    // Pode criar uma instância da classe Funcionario usando os valores dos controladores
    // e adicionar à lista de funcionários, por exemplo.
    final funcionario = Funcionario(
      id: 1, // Id fictício, ajustar conforme a lógica
      nome: _nomeController.text,
      cargo: _cargoController.text,
      itensEmprestados: [],
    );

    // adicionar a lógica para adicionar o funcionário a uma lista
    // ou a um banco de dados, dependendo da implementação.
    
    // Após o cadastro, pode navegar para outra tela ou fazer outras ações.
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CadastroFuncionarioScreen(),
    );
  }
}
