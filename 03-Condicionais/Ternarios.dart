void main() {
  print('03.1) Ternários\n');

  /// Um ternário é o mesmo que um if else em uma linha só
  /// Podemos gerar pequenas validações de forma direta sem necessidade de mts linhas

  /// A frente um exemplo de como resumiriamos uma validação simples de if em um ternário
  // ignore: dead_code
  if (!true) {
    print('Verdadeiro');
  } else {
    print('Falso');
  }

  // ignore: dead_code
  print('${!true ? 'Verdadeiro' : 'Falso'}'); // Ternário
  /// Acima temos as teclas reservadas para o ternário que são "?" e ":"
  /// "?" Aciona a condição e o ":" separa os valores lógicos

  int idade = 17;
  print((idade < 14)
      ? 'Criança'
      : (idade < 18)
          ? 'Adolescente'
          : 'Adulto');

  int nota = 70;
  String resultado = (nota < 40)
      ? 'Reprovado'
      : (nota < 70)
          ? 'Recuperação'
          : 'Aprovado';

  int numero = 12;
  print('Numero: $numero é ${(numero % 2 == 0) ? 'par' : 'impar'} e ${(numero >= 0) ? 'positivo' : 'negativo'}!');

  int multiplo = 3;
  print('Numero: $numero ${(numero % multiplo == 0) ? 'é' : 'não é'} multiplo de $multiplo');

  int ano = 1999;
  print('Ano: $ano ${(ano % 4 == 0 || ano % 400 == 0 && ano % 100 != 0) ? 'é bissexto' : 'não é bissexto'}');
}
