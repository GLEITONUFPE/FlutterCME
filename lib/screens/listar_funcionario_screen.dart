import 'package:flutter/material.dart';
import 'package:flutter_tes/classes/funcionario.dart';

class ListarFuncionarios extends StatelessWidget {
  final List<Funcionario> funcionarios = [
    Funcionario(id: 1, nome: 'Walter', cargo: 'Desenvolvedor', itensEmprestados: [5], ),
    Funcionario(id: 2, nome: 'José', cargo: 'Gerente', itensEmprestados: [3], ),
    Funcionario(id: 3, nome: 'Maria', cargo: 'Estagiária', itensEmprestados: [1], ),
    Funcionario(id: 4, nome: 'Monica', cargo: 'Desenvolvedor', itensEmprestados: [9], ),
    Funcionario(id: 5, nome: 'Tamires', cargo: 'Curioso', itensEmprestados: [7], ),
    Funcionario(id: 6, nome: 'João', cargo: 'Desenvolvedor', itensEmprestados: [2], ),
    Funcionario(id: 7, nome: 'Pedro', cargo: 'Testador', itensEmprestados: [4], ),
    Funcionario(id: 8, nome: 'Jao', cargo: 'Desenvolvedor', itensEmprestados: [0], ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Funcionários'),
          
                  ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: funcionarios.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(funcionarios[index].nome),
                    subtitle: Text(funcionarios[index].cargo),
                    trailing: Text('Itens emprestados: ${funcionarios[index].itensEmprestados.toString()}'),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Volta para a tela anterior
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
