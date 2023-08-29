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
