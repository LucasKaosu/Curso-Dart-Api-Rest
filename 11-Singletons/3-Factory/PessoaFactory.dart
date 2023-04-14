import 'dart:math';

class PessoaFactory {
  static final PessoaFactory instancia = new PessoaFactory._construtorNomeado('indefinido');
  String? nome;

  factory PessoaFactory() => instancia;

  PessoaFactory._construtorNomeado(this.nome);
  // Configurações iniciais
}

class PessoaInstancia {
  static PessoaInstancia? _instancia; // Retirar _ para usar o singleton
  String? nome;
  final int _identidade;

  factory PessoaInstancia({String nome = 'idenfinido', int? identidade}) {
    identidade = (identidade == null) ? Random().nextInt(99999999 + 1) : identidade;
    return _instancia ??= new PessoaInstancia._construtorNomeado(nome, identidade);
  }

  PessoaInstancia._construtorNomeado(this.nome, this._identidade) {
    // Configurações inicias
  }

  get identidade => _identidade;
}
