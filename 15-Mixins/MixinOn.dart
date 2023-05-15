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

abstract class Artista {
  void acao() {
    print('Performista...');
  }
}

// Mixins

mixin Cantor on Artista {
  void acao() {
    print('Canta');
  }
}

mixin Dancarino {
  void acao() {
    print('Dança');
  }
}

// Interface

abstract class Acao {
  void executar();
}

// Classe Concreta

class Musico extends Artista with Dancarino, Cantor implements Acao {
  void acao() => print('Compõe\n'); // Comente para ver a hierarquia de sobrescrita!

  @override
  void executar() {
    super.acao();
    acao();
  }
}

// A classe MC não pode cantar porque não extends de Artista

class MC with Dancarino implements Acao {
  void acao() => print('Mixa, solta o batidão\n'); // Comente para ver a hierarquia de sobrescrita!

  @override
  void executar() {
    super.acao();
    acao();
  }
}

void main() {
  print('15.1) Mixin ON\n');

  Musico musico = Musico();
  musico.executar(); // Compõe

  MC mc = MC();
  mc.executar(); // Bota o batidão
}
