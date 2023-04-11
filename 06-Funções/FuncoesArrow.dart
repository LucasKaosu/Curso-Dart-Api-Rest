///
/// Funções arrow tem o retorno implicito!
///
funcaoArrow() {
  print('06.2) Funções Arrow');

  String conceito() => 'Função arrow com retorno implícito';

  String somarValores(int valorA, int valorB) => 'Soma: $valorA + $valorB = ${valorA + valorB}';

  String verificarMaioridade(String nome, int idade) => (idade >= 18) ? '$nome é maior de idade' : '$nome não é maior de idade';

  String calcularAreaDoCirculo(double raio) => 'Área do circulo: ${3.14 * raio * raio}';

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0;

  void calcularSalario(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;
    print('Empregado: $nome salario: $total');
  }

  print(conceito());
  print(somarValores(2, 3));
  print(verificarMaioridade('Lucas', 23));
  print(calcularAreaDoCirculo(2));
  calcularSalario('Lucas', 900, 100, 2);
  
}

void main() {
  funcaoArrow();
}
