/*
  * Conceitos
  - Interfaces são modelos para implementar métodos e atributos em nossas classes
  * Regras
  - Ao implementar uma interface devemos utilizar todos os métodos e atributos
  - No dar não tem uma sintaxe para interfaces, pode ser uma classe concreta ou abstrata!
  = Pode implementar mais de uma interface e deve sobrescrever todos os métodos e atributos!
*/

import 'Candidato.dart';

void main() {
  print('14.0) Interfaces\n');

  var bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL');
  bolsonaro
    ..objetivo = 'Ganhar a Eleição'
    ..objetivosPessoais()
    ..postagem = 'Vou acabar com a corrupção no Brasil!'
    ..escrevePostagem()
    ..idelologiaPolitica();
}
