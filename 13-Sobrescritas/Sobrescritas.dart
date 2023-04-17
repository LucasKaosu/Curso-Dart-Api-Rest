/*
  * Método (override/sobrescrita != overload/sobrecarga)
  - Override Temos sobrescrita dos métodos da classe pai na classe herdeira(filha)
  * Construtores
  - Super se refere ao construtor da classe herdeira
  * Classes Abstratas
  - Não podem ser instânciadas, servem como modelo
  - Métodos sem escopo devem ser sobrescritos nas classes herdeiras(filhas)
*/
import 'Abelha.dart';
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
  print('${cao.nome} ${(cao.docil == true) ? 'Está amigável' : 'Não está amigável'}\n');

  //? Desafio: Criar uma classe Abelhas que herda de Artropodes com os construtores
  //? (insetos, aracnideos e crustaceos) que herde de Animal no construtor Invertebrados!

  var abelha = Abelha.domestico('Bee', 'Bee-Movie', 'Macho');
  print('Nome: ${abelha.nome} Raça: ${abelha.raca} Sexo: ${abelha.sexo} Idade: ${abelha.idade} Docil: ${abelha.docil}');
  print('Desenvolvimento: ${abelha.desenvolvimento} Tipo: ${(abelha.coluna == true) ? 'Vertebrado' : 'Invertebrado'}');
  abelha
    ..dormir()
    ..alimentar()
    ..reproduzir()
    ..acao();
  print(abelha);
  print('${abelha.nome} ${(abelha.docil == true) ? 'Está amigável' : 'Não está amigável'}');
}
