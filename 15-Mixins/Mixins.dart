/*
  * Conceito
  - Mixin permite implementar métodos e atributos de outras classes
  * Regras
  - Devem ser implementados antes das interfaces
  - Podem ser implementados a partir de uma classe concreta ou abstrata
  - Não pode implementar uma classe que estenda e nem extender de uma classe mixin 
  - Pode implementar mais de um mixin, e não é obrigatorio usar todos métodos e atributos
  - As classes que possuem métodos iguais serão sobrescritas em ordem até a classe herdeira
  * ON
  - É obrigatório declarar sua classe como mixin.
  - Restringe o uso do mixin as classes que estendem ou implementam a classe declarada.
*/

abstract class Cidadao {
  String? nome;

  Cidadao(this.nome);

  void objetivosPessoais();
  void direitosDeveres() {
    print('Todo cidadão tem direitos e deveres');
  }
}

// INTERFACES

abstract class Presidenciavel {
  String? partido;
  String? ideologia;

  void idelologiaPolitica();
}

class Postagem {
  String? postagem;

  void escrevePostagem() {
    print('');
  }
}

// MIXINS

mixin Elegivel on Cidadao {
  bool elegivel = false;
  void prestacaoContas();
}

mixin class Conta {
  double _saldo = 0;
  double salario = 33000;

  get saldo => this._saldo;
  set depositar(double valor) => this._saldo = valor;

  bool declaracaoRenda() => (_saldo / 12) < salario;
}

// CLASSE CONCRETA
class Candidato extends Cidadao with Elegivel, Conta implements Postagem, Presidenciavel {
  String? objetivo;

  Candidato(String? nome, {this.ideologia, this.partido}) : super(nome) {
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  // INTERFACES
  @override
  String? postagem;

  @override
  void escrevePostagem() {
    print('Postagem de $nome no facebook: $postagem');
  }

  @override
  String? ideologia;
  String? partido;

  @override
  void idelologiaPolitica() {
    print('$nome é candidato com ideologia de $ideologia pelo partido $partido');
  }

  // Mixins
  @override
  void prestacaoContas() {
    elegivel = super.declaracaoRenda();
    if (elegivel) {
      print('Candidato $nome passou na prestação de contas!\nAutorizado a concorrer nas eleições 2022!');
    } else {
      print('Candidato $nome foi barrado na prestação de contas!\nSaldo: $saldo excede a renda declarada para Presidencia!');
    }
  }
}

void main() {
  print('15.0) Mixin Heranças Múltiplas\n');

  var bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL');
  bolsonaro
    ..objetivo = 'Ganhar a Eleição'
    ..objetivosPessoais()
    ..postagem = 'Vou acabar com a corrupção no Brasil!'
    ..escrevePostagem()
    ..idelologiaPolitica()
    ..depositar = 36000
    ..prestacaoContas();
}
