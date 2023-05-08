class Proprietario {
  String nome, endereco;
  List<Carro> carros;
  Proprietario(this.nome, this.endereco, this.carros);
}

class Carro {
  String marca, modelo, placa;
  Caracteristicas caracteristicas;
  List<Multas>? multas;
  Carro(this.marca, this.modelo, this.placa, this.caracteristicas, {List<Multas>? multas});
}

class Caracteristicas {
  String tipo;
  int passageiros;
  int potencia;
  String combustivel;
  Caracteristicas(this.tipo, this.passageiros, this.potencia, this.combustivel);
}

class Multas {
  String descricao, tipo;
  int pontos;
  Multas(this.descricao, this.tipo, this.pontos);
}
