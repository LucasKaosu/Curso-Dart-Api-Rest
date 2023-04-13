/*
  * Static
    A variável estatica fica disponível na própria classe em vez de suas instâncias/objetos
    Em métodos estáticos deve usar variáveis estáticas da classe
    Variáveis estáticas podem ser acessadas sem precisar instanciar classes/objetos
    O objetivo por trás de utilizar o modificador Static é para menor gasto na alocação
    de memória, tendo em vista que não tem necessidade de instânciar os métodos ou variáveis
    na hora da utilização em massa
*/

import 'Calculos.dart';

void main() {
  print('10.0) Modificadores Static\n');

  double raio = 5;
  var calculo1 = new Calculos();
  print(calculo1.pi);
  print(calculo1.areaCirculo(raio));

  print('');

  Calculos calculo2 = Calculos();
  print(calculo2.pi);
  print(calculo2.areaCirculo(raio));

  print('\nInstancias consomem ${identical(calculo1, calculo2) ? 'Menos' : 'Mais'} memória!\n');

  print(Calculos.piEstatico);
  print(Calculos.piEstatico * (raio * raio));
  print('Retornos iguais: ${Calculos.areaCirculoEstatico(raio) == Calculos().areaCirculo(raio) ? 'Sim' : 'Não'} Métodos diferentes!');
}
