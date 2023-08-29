import 'package:flutter/material.dart';
import '../classes/item.dart';

class CadastroItemScreen extends StatefulWidget {
  @override
  _CadastroItemScreenState createState() => _CadastroItemScreenState();
}

class _CadastroItemScreenState extends State<CadastroItemScreen> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _tipoController = TextEditingController();
  final TextEditingController _quantidadeTotalController =
      TextEditingController();
  final TextEditingController _quantidadeEstoqueController =
      TextEditingController();
  final TextEditingController _quantidadeEmprestadaController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Item'),
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
              controller: _tipoController,
              decoration: InputDecoration(labelText: 'Tipo'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _quantidadeTotalController,
              decoration: InputDecoration(labelText: 'Quantidade Total'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextField(
              controller: _quantidadeEstoqueController,
              decoration: InputDecoration(labelText: 'Quantidade em Estoque'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextField(
              controller: _quantidadeEmprestadaController,
              decoration: InputDecoration(labelText: 'Quantidade Emprestada'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _cadastrarItem();
              },
              child: Text('Cadastrar Item'),
            ),
            Container(height: 16),// Criando um espaço entre os botoes de cadastrar e voltar
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

  void _cadastrarItem() {
    // lógica para cadastrar o item
    // Pode criar uma instância da classe Item usando os valores dos controladores
    // e adicionar à lista de itens, por exemplo.
    final item = Item(
      id: 1, // Id fictício, deve ajustar conforme sua lógica
      nome: _nomeController.text,
      tipo: _tipoController.text,
      quantidadeTotal: int.parse(_quantidadeTotalController.text),
      quantidadeEstoque: int.parse(_quantidadeEstoqueController.text),
      quantidadeEmprestada: int.parse(_quantidadeEmprestadaController.text),
    );

    // lógica para adicionar o item a uma lista
    // ou a um banco de dados, dependendo da sua implementação.

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
      home: CadastroItemScreen(),
    );
  }
}
