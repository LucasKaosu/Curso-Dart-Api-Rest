/*
  * Método (override/sobrescrita != overload/sobrecarga)
  - Override Temos sobrescrita dos métodos da classe pai na classe herdeira(filha)
  * Construtores
  - Super se refere ao construtor da classe herdeira
  * Classes Abstratas
  - Não podem ser instânciadas, servem como modelo
  - Métodos sem escopo devem ser sobrescritos nas classes herdeiras(filhas)
*/
import 'Cao.dart';

void main() {
  print('13.0) Sobrescrita de Métodos, Atributos e Construtores\n');

  var cao = Cao.domestico('Poppy', 'Vira-lata', 'Fêmea');
  print('Nome: ${cao.nome} Raça: ${cao.idade} Sexo: ${cao.sexo} Idade: ${cao.idade} Docil: ${cao.docil}');
  print('Desenvolvimento: ${cao.desenvolvimento} Tipo: ${(cao.coluna == true) ? 'Vertebrado' : 'Invertebrado'}');
  cao
    ..dormir()
    ..alimentar()
    ..reproduzir()
    ..acao();
  print(cao);
  print('${cao.nome} ${(cao.docil == true) ? 'Está amigável' : 'Não está amigável'}');
}
