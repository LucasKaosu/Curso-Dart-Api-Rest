class Vendedor {
  String nome;
  List<Venda> vendas;
  Vendedor(this.nome, this.vendas);
}

class Venda {
  String produtos;
  double preco;
  Venda(this.produtos, this.preco);
}