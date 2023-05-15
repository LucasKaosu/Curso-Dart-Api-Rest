void main() {
  print('02.0) Operadores Lógicos (&& || !)');

  /// Operador && Retorna true somente se todas as afirmações forem true
  /// Operador || Retorna true caso aja pelo menos uma afirmação true
  /// Operador !  Retorna o valor inverso do booleano (!true = false)

  var verdadeiro = !false;
  bool falso = !true;
  print('Verdadeiro = $verdadeiro Falso = $falso');
  print('Operador (!) !true = ${!true} !false ${!false}');
  // ignore: dead_code
  bool teste1 = verdadeiro || verdadeiro;
  // ignore: dead_code
  bool teste2 = verdadeiro || falso;
  bool teste3 = falso || falso;
  print('Operador (||) ${teste1} - ${teste2} - ${teste3}');
  // ignore: dead_code
  print('Operador (&&) ${true && true} - ${true && false} - ${false && false}');
  bool operacao = (1 <= 2) && (3 > 2);
  print(operacao);
  operacao = !(1 > 2) && ((3 < 2)) || falso;
  print(operacao);
}
