void main() {
  print('05.0) Loops (While, doWhile)\n');

  // while faz o teste antes da execução
  var numero = 5;
  while (numero > 0) {
    print('while: $numero');
    numero--;
  }

  print('');

  // doWhile faz a execução e testa depois

  var contagem = 1;
  do {
    print('doWhile: $contagem');
    contagem++;
  } while (contagem <= 3);

  int multiplo = 4;
  int minimo = 10;
  int maximo = 20;
  int resultado = minimo;

  while (resultado <= maximo) {
    if (resultado % multiplo == 0) {
      print('Primeiro multiplo de: $multiplo entre $minimo e $maximo é: $resultado ');
      break; // Ao achar o primeiro multiplo interrompe o loop
    }
    resultado++;
  }
}
