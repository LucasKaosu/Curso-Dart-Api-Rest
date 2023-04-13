/*
  * Final
    Inicializada apenas quando acessada em tempo de execução e deve ser declarada nesse momento!
    Em coleções(Arrays) Final nem todo o conteúdo será final
*/
import 'Pessoa.dart';

void main() {
  print('10.1) Modificadores Final\n');

  //? Objeto em queda livre leva 5s para chegar ao solo! Qual a velocidade máxima do objeto?

  /// Tempo de execução se refere ao tempo onde o programa está sendo executado
  /// e é quando a variável é de fato criada e atribuida pela primeira vez
  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo; // v = g * t
  print('Velocidade máxima: $velocidade m/s\n');

  /// Como temos um for, a cada repetição o tempo de execução de reseta, dessa forma
  /// a cada looping nossa variável é criada e atribuida, assim mesmo sendo final
  /// ela obtem valores diferente, pois são execuções diferentes
  for (var i = 1; i <= 3; i++) {
    final indice = i;
    print('Contagem: $indice');
  }

  /// Observe que após a criação do objeto, atribuimos seu valor no tempo de execução
  /// após a primeira atribuição esse objeto torna o atributo "familiares" inalterável
  /// porém coleções(arrays) de final podem sofrer ".add" desde que não venham de um construtor
  /// porém caso haja uma nova instancia esse objeto poderá receber novos valores
  /// pois se tornará um novo tempo de execução
  var pessoa = Pessoa('Lucas', ['Edvan', 'Lucimar', 'Nayara', 'Bruna']);
  pessoa.nome = 'Lucas Silva';
  //pessoa.familiares = ['Edvan', 'Lucimar', 'Nayara', 'Bruna', 'Pedro']; // Erro: Atributo final
  print('Nome: ${pessoa.nome} Familiares: ${pessoa.familiares}');

  var pessoa2 = Pessoa('Lucas', ['Poppy', 'Bolinha', 'Jake']);
  pessoa2.nome = 'Lucas Silva';
  print('Nome: ${pessoa2.nome} Familiares: ${pessoa2.familiares}');
}
