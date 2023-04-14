/*
  * Singletons
  - É um padrão de projeto para que exista apenas uma instância de classe.
  - O construtor nomeado privado sem o construtor default impede de instanciar a classe.
  * Getter
  - A _instancia é privada e acessada através do get.
*/

import 'PessoaGetter.dart';

void main() {
  print('11.2) Singletons Getter\n');

  print(PessoaGetter.instancia.nome);
  PessoaGetter.instancia.nome = 'Lucas';
  print(PessoaGetter.instancia.nome);
  var p1 = PessoaGetter.instancia;
  var p2 = PessoaGetter.instancia;
  p1.nome = 'Bruna';
  print(PessoaGetter.instancia.nome);
  p2.nome = 'Poppy';
  print(PessoaGetter.instancia.nome);
  print(identical(p1, p2));
  print(p2 == PessoaGetter.instancia);
}
