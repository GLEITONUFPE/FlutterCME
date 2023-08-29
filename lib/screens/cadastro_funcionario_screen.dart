import 'package:flutter/material.dart';

class Funcionario {
  final int id;
  final String nome;
  final String cargo;
  List<int> itensEmprestados;

  Funcionario({
    required this.id,
    required this.nome,
    required this.cargo,
    required this.itensEmprestados,
  });
}

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
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _cargoController,
              decoration: InputDecoration(labelText: 'Cargo'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _cadastrarFuncionario();
              },
              child: Text('Cadastrar Funcionário'),
            ),
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
