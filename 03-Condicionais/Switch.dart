void main() {
  print('03.2) Switch\n');

  String operacao = '%'; // + - * /
  int numeroA = 12;
  int numeroB = 3;

  /// O Switch verifica o parâmetro passado no caso a seguir sera a variável
  /// operação, cada caso recebera um valor que deveria ser atribuido a variável
  /// validadora, caso nenhum caso seja encontrado sera retornado o default
  /// ao final de cada case é necessário que haja um break, ele irá parar a
  /// execução do validador
  switch (operacao) {
    case '+':
      print('Resultado ${numeroA + numeroB}');
      break;
    case '-':
      print('Resultado ${numeroA - numeroB}');
      break;
    case '*':
      print('Resultado ${numeroA * numeroB}');
      break;
    case '/':
      print('Resultado ${numeroA / numeroB}');
      break;
    default:
      print('Operação inválida');
  }
  int dia = 1;
  switch (dia) {
    case 0:
      print('Domingo');
      break;
    case 1:
      print('Segunda');
      break;
    case 2:
      print('Terça');
      break;
    case 3:
      print('Quarta');
      break;
    case 4:
      print('Quinta');
      break;
    case 5:
      print('Sexta');
      break;
    case 6:
      print('Sábado');
      break;
    default:
      print('Dia inválido');
  }
}
