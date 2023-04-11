void main() {
  print('03.0) Condicionais (if else)');

  // ignore: dead_code
  if (!true) {
    print('Verdadeiro');
  } else {
    print('Falso');
  }

  /// Dart aceita if sem chaves, porém fique atento, com if sem chaves o dart
  /// irá ler apenas 1 linha após a validação, portanto caso seu código vá ter
  /// uma verificação para uma execução extensa TEM que ser declarado um if com chaves
  int idade = 17;
  if (idade >= 18)
    print('Maior');
  else
    print('Menor');
  // fim do exemplo

  idade = 18;
  if (idade < 14) {
    print('Criança');
  } else if (/*idade < 18*/ idade >= 14 && idade <= 17) {
    print('Adolescente');
  } else {
    // opção default, elfe sozinha vale como a opção caso nenhuma validação seja atendida
    print('Adulto');
  }

  /// Relembrando conteúdo de manipulação de variáveis
  String textoint = '10';
  String textoDouble = '10.12345';
  int numeroInt = int.parse(textoint); // Conversões de numéricos para texto
  var numeroDouble = double.parse(textoDouble); // Conversões de numéricos para texto
  print('ParseInt: $numeroInt ParseDouble: $numeroDouble'); // Conversões de numéricos para texto
  print('ParseString: ${numeroDouble.toString() is String}'); // Conversões de numéricos para texto + Verificação da conversão
  /// Fim do exemplo

  double peso = 105;
  double altura = 1.77;
  var tmp = peso / (altura * altura);
  double imc = double.parse(tmp.toStringAsFixed(2));

  if (imc < 18.5) {
    print('imc: $imc Abaixo do peso');
  } else if (imc >= 18.5 && imc < 25) {
    print('IMC: $imc Peso normal');
  } else if (imc >= 25 && imc < 30) {
    print('IMC: $imc Sobrepeso');
  } else if (imc >= 30 && imc < 35) {
    print('IMC; $imc Obesidade grau 1');
  } else if (imc >= 35 && imc < 40) {
    print('IMC: $imc Obesidade grau 2');
  } else if (imc > 40) {
    print('IMC: $imc Obesidade grau 3');
  } else {
    print('Valores incorretos para o cálculo');
  }
}
