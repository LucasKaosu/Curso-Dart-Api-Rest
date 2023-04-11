/*
  * Tipos de variáveis
  Num (int, double),
  String,
  Bool,
  Dynamic.
*/

void main() {
  print('01.1) Variáveis Funções');

  num pi = 3.14;
  print(pi.floor()); // Arredonda pro inteiro inferior
  print(pi.round()); // Arredonda pro inteiro mais próximo
  print(pi.ceil()); // Arredonda pro inteiro superior
  print(pi.clamp(3, 3.1)); // Arredonda para o parâmetro mais próximo dos 2
  print(pi.compareTo(3)); // -1 se for menor // 0 se for igual // 1 se for maior
  print(pi.remainder(3)); // Resto da Divisão
  print(pi.toInt()); // Conversão de double para int
  print(pi.toDouble()); // Covnersão de int para double
  print(pi.toString()); // Conversão de numérico para texto
  print(pi.toStringAsFixed(1)); // Conversã de numérico para texto limitando casa descimal
  print(pi.truncate()); // Trunca o valor (Ignora o valor após a virgula)
  print(pi.isNegative); // Retorna boolean
  print(pi.isInfinite); // Retorna boolean
  print((pi / 0).isInfinite); // Retorna boolean
  print(pi.isFinite); // Retorna boolean
  print(12.gcd(16)); // Retorna o resto da divisão
  print('1'.padLeft(2, '0')); // Define quantas casa decimais pretende que tenha e põe um valor ao lado definido no argumento
  print('1'.padRight(2, '0')); // Igual o de cima so que para direita ao invés da esquerda

  print('');

  String nome = 'Lucas';
  String nomeCompleto = '\t Lucas Silva de Oliveira';
  print(nome.toLowerCase()); // Torna tudo em letra minuscula
  print(nome.toUpperCase()); // Torna tudo em letra maiuscula
  print(nomeCompleto.trim()); // Corrige erros de formatação da escrita
  print(nomeCompleto.split(' ')); // Divide em um array os locais onde estiver seu parâmetro digitado // [	, Lucas, Silva, de, Oliveira]
  print(nome.split('')); // Caso não tenha parâmetro ela retorna todo o conteudo dividido em array // [L, u, c, a, s]
  print(nome.substring(2, 5)); // Transforma a escrita em array e retorna apenas o intervalo selecionado ignorando o último indice // "Lucas" - parâmetro 2-5 - "cas"
  print(nome.startsWith('L')); // Verifica se inicia com esse caracter, retorna boolean
  print(nome.startsWith('as', 3)); // Verifica se o indice inicia com esse padrão de caracter, retorna boolean
  print(nome.replaceAll('a', 'o')); // Substitui todo 1º argumento encontrado pelo 2º argumento // Lucas -> Lucos
  print(nome.replaceFirst('Lu', '')); // Substitui o 1º argumento encontrado pelo 2º argumento // Lucas -> cas
  print(nome.replaceFirst('a', 'o', 3)); // Substitui o 1º argumento encontrado pelo 2º argumento até o indice informado // Lucas -> Lucos
  print(nome.replaceRange(1, 3, '')); // Substitui o que tiver na String pelo último argumento dentro do intervalo informado // Lucas -> Las
  print(nomeCompleto.trim().split(' ')); // Corrigiu o erro de espaços com trim e dps retornou um array com o conteúdo restante // [Lucas, Silva, de, Oliveira]
  print(nome.contains('l')); // Verifica se contém o argumento na variável e retorna boolean
  print(nome.contains('u', 1)); // Vertifica se contém o argumento na variável do indice informado para frente e retorna boolean
  print(nome.indexOf('uc')); // Retorna o indice de acordo com o argumento // 1 , pq uc, começa no indice 1
  print(nome.length); // Retorna o comprimento do array
  print(nome.endsWith('s')); // Verifica se termina com o parâmetro informado e retorna boolean
  print(nome.lastIndexOf('c')); // Retorna o último indice da variável que contenha esse parâmetro // 2 pois so tem "c" no indice 2
  print(nome.compareTo('Lucas')); // Retorna 0 se for igual
  print(nome.compareTo('Luc')); // Retorna 1 se iniciar igual
  print(nome.compareTo('cas')); // Retorna -1 se for diferente
  print(' '.isEmpty); // Verifica se é vazio e retorna boolean // retorna true nesse caso pois espaço é considerado um caracter
  print(double.parse('12.55')); // Converte String para double
  print(int.parse('12')); // Converte String para int

  print('');

  num numero = 3.14;
  print(numero is double); // Verifica se a variável *é* do tipo double e retorna um boolean
  print(numero is! double); // Verifica se a variável *não é* do tipo double e retorna um boolean
}
