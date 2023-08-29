class Item {
  final int id;
  final String nome;
  final String tipo;
  int quantidadeTotal;
  int quantidadeEstoque;
  int quantidadeEmprestada;

  Item({
    required this.id,
    required this.nome,
    required this.tipo,
    required this.quantidadeTotal,
    required this.quantidadeEstoque,
    required this.quantidadeEmprestada,
  });
}
