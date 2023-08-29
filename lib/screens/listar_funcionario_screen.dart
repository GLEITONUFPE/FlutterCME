import 'package:flutter/material.dart';

class Funcionario {
  final int id;
  final String nome;
  final String cargo;
  final int itensEmprestados;

  Funcionario({
    required this.id,
    required this.nome,
    required this.cargo,
    required this.itensEmprestados,
  });
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Listar Funcionários'),
//         ),
//         body: FuncionarioList(),
//       ),
//     );
//   }
// }

class FuncionarioList extends StatelessWidget {
  final List<Funcionario> funcionarios = [
    Funcionario(id: 1, nome: 'João', cargo: 'Gerente', itensEmprestados: 5),
    Funcionario(id: 2, nome: 'Maria', cargo: 'Analista', itensEmprestados: 3),
    Funcionario(id: 3, nome: 'Carlos', cargo: 'Desenvolvedor', itensEmprestados: 7),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: funcionarios.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(funcionarios[index].nome),
          subtitle: Text('Cargo: ${funcionarios[index].cargo}'),
          trailing: Text('Itens emprestados: ${funcionarios[index].itensEmprestados.toString()}'),
        );
      },
    );
  }
}
