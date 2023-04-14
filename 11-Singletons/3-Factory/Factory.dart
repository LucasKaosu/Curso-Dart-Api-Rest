/*
  * Singletons
  - É um padrão de projeto para que exista apenas uma instância de classe.
  - O construtor nomeado privado sem o construtor default impede de instanciar a classe.
  * Factory
  - Construtor factory é usado para retornar/manter a instância original.
  - Construtor factory é capaz de retornar valores.
*/

import 'PessoaFactory.dart';

singletonFactory() {
  print('11.3) Singletons Factory');

  var p1 = new PessoaFactory();
  print(p1.nome);
  p1.nome = 'Lucas';
  print(PessoaFactory.instancia.nome);
  PessoaFactory.instancia.nome = 'Bruna';
  print(p1.nome);
  var p2 = PessoaFactory();
  p2.nome = 'Poppy';
  print(PessoaFactory.instancia.nome);
  print(identical(p1, PessoaFactory.instancia));
  print(p2 == PessoaFactory.instancia);
}

singletonInstancia() {
  print('11.4) Singleton Instância\n');

  var p1 = new PessoaInstancia(nome: 'Lucas');
  print('Nome: ${p1.nome} id: ${p1.identidade}');
  var p2 = PessoaInstancia(nome: 'Bruna', identidade: 12345678);
  print('Nome: ${p2.nome} id: ${p2.identidade}');
  p2.nome = 'Lucas Silva';
  print('Nome: ${p1.nome} id: ${p1.identidade}');
  print(identical(p1, p2));
  //print(p2 == PessoaInstancia.instancia);
}

void main() {
  singletonFactory();
  singletonInstancia();
}
