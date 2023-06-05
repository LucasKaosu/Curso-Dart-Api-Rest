class Pessoa {
  static final Map<String, Pessoa> _pessoas = Map();
  final String nome;
  int? idade;
  double? peso;

  factory Pessoa(String nome, {int idade = 0, double peso = 0}) {
    // if (_pessoas.containsKey(nome)) return _pessoas[nome]; // não sei oq fazer com essa porra de factory
    final novaPessoa = Pessoa._construtorPrivado(nome, idade, peso);
    _pessoas[nome] = novaPessoa;
    return novaPessoa;
  }
  Pessoa._construtorPrivado(this.nome, this.idade, this.peso) {
    // configurações iniciais
  }

  static void mostrarDetalhes(String nome) {
    if (_pessoas.containsKey(nome)) {
      print('DETALHES: nome: $nome idade: ${_pessoas[nome]?.idade} peso: ${_pessoas[nome]?.peso}');
    } else {
      print('"${nome}" não existe map de Pessoas');
    }
  }

  static void alterarDetalhes(String nome, {int? idade, double? peso}) {
    if (_pessoas.containsKey(nome)) {
      _pessoas[nome]?.idade = idade;
      _pessoas[nome]?.peso = peso;
      print('ALTERAÇÃO: nome: $nome idade: ${_pessoas[nome]?.idade} peso: ${_pessoas[nome]?.peso}');
    } else {
      print('"${nome}" não existe no map de Pessoas');
    }
  }

  static void mostrarPessoa() {
    print('PESSOAS: $_pessoas');
    _pessoas.forEach((key, value) => print('forEach: $key: ${value.idade}, ${value.peso}'));
  }

  @override
  String toString() {
    return '$nome: $idade';
  }
}
