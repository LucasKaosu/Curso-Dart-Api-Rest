void main() {
  print('05.1) Loops (For)');

  /// O laço de repetição for, mts vezes chamado de contador, é um laço de restrição
  /// e repetição, por exemplo abaixo, teremo um contador que se define em 3 partes
  /// 1 - var i = 1; essa é nossa variável contadora
  /// 2 - i <= 3; essa é a condição onde nossa variável contadora será barrada
  /// 3 - i++; essa é a declaração do incremento que fará com q ao final de cada
  /// laço nossa variável contadora seja acrescida ate que chegue na condição barradora

  for (var i = 1; i <= 3; i++) {
    print('Contagem: $i');
  }

  print('');

  for (int i = 15; i >= 0; i -= 5) {
    print('Regressiva: $i');
  }

  print('');

  String nome = 'Lucas';
  int numero = 0;
  for (int i = numero; i < nome.length; i++) {
    /*if (i % 2 == 0) {
      print('$i é par');
    } else {
      print('$i é impar');
    }*/ //Exemplo de if

    print('$i ${(i % 2 == 0) ? 'é par' : 'é mpar'}');
  } // Exemplo ternário

  print('');

  for (var i = 0; i < nome.length; i++) {
    print('${nome.substring(i, i + 1)}'); // Intervalo estipulado
  }

  print('');

  // Quais os multiplos de 2 e 3 no intervalo de 5 a 12
  for (var i = 5; i <= 12; i++) {
    if (i == 0) {
      print('$i é multiplo de todos os numeros');
    } else if (i % 2 == 0 && i % 3 == 0) {
      print('$i é multiplo de 2 e 3');
    } else if (i % 3 == 0) {
      print('$i é multiplo de 3');
    } else if (i % 2 == 0) {
      print('$i é multiplo de 2');
    } else {
      print(i);
    }
  }

  print('');

  dynamic frutas = ['tomate', 'manga', 'pêra', 'maçã'];
  for (var i = 0; i < frutas.length; i++) {
    print('for: $i ${frutas[i]}');
  }

  print('');

  /// For in, com esse tipo de for, temos um controle automático crescente
  for (var fruta in frutas) {
    print('forin: $fruta');
  }
}
