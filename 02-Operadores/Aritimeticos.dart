void main() {
  print('02.2) Operadores aritiméticos (+ - * / ~/ %), incremento (+= ++) e assignação ( = ??)\n');

  var peso = 10;
  peso = peso + 5;
  peso += 5;
  peso++; // Incrementa 1
  print(peso);

  var a, b, c, d, e, f;
  a = 3;
  b = ++a; // Incrementa a antes que b receba o valor
  print('a: $a b: $b');

  c = ++a / --b;
  print('a: $a b: $b');
  print(c);

  d = a ~/ b; // ~/ faz a divisão retornar um valor inteiro
  print('c: $c d: $d');

  var valorA = 8, valorB = 2;
  print('ex.: 9 ~/ 2 = ${valorA ~/ valorB}');

  e = 1;
  f = e;
  f = null; // nula
  f ??= ++e; // Operador ?? verifica se a variável é nula e caso seja faz a atribuição
  print('e $e f: $f');

  var x, y, z;
  z = 1;
  x = y ?? z; // x recebe o valor de y a menos que y seja nulo, caso seja x recebe´ra z;
  print(x);

  var nome = null;
  print('nome: ${nome ?? 'Lucas'}\n'); // caso nome for nulo recebe o valor string 'Lucas'

  var numero = 12;
  var par = numero % 2 == 0; // Operador % mostra o resto da divisão
  var impar = numero % 2 != 0;
  var positivo = numero >= 0;
  var negativo = numero < 0;
  print('numero: $numero Par $par Impar: $impar Positivo: $positivo Negativo: $negativo');

  var multiplo = 3;
  print('numero: $numero é multiplo de $multiplo? ${numero % multiplo == 0}');

  int dividendo = 19, divisor = 4;
  double quociente = dividendo / divisor;
  int resto = dividendo % divisor;
  bool exata = resto == 0;
  print('Quociente $quociente Exata: $exata Resto $resto');
}
