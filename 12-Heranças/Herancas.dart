/*
  *Regras
  - Umas classe pode ter somente uma herança!
  *Construtores
  - Devem obedecer a ordem dos parâmetros.
  - Parâmetros default deve ser nomeados ou posicionados.
  - Tratamento e tipagem de parâmetros devem ser feitos na classe herdeira!
*/
import 'Cao.dart';

void main() {
  print('12.0) Heranças de atributos métodos e construtores\n');

  var cao = Cao('Poppy', 'Vira-lata', 'Femêa');
  print('Nome: ${cao.nome} Raça: ${cao.raca} Sexo: ${cao.sexo} Idade: ${cao.idade} Dócil: ${cao.docil}');
  cao
    ..dormir()
    ..alimentar()
    ..acao();
  print('${cao.nome} ${(cao.docil == null) ? 'está amigável' : 'não está amigável'} ');
}
