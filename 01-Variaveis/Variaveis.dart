void main() {
  print('01.0) Variáveis');
  // va vb calca // isso é uma má prática de programação
  // Tipos de comentários
  // Do format comment (//) - Comentário linha
  // Block comment (/* bla bla bla */) - Comentário bloco
  // Doc comment (///) - Comentário documento

/*
  "backspace" : "\b",
  "formfeed" : "\f",
  "newline" : "\n",
  "return" : "\r",
  "tab" : "\t".
*/

  var valorA = 10;
  var valorB = 4;
  var valorC = 22.5;
  var resultado = valorA + valorB + valorC;
  print(resultado);
  var salario = 1000, descontos = 250;
  var conta = salario - descontos;
  print(conta);
  var numero = 3 + ((2 * 4) + (10 / 3));
  print(numero);

  print('');

  print("concatenar "
      "Strings "
      "é simples assim");

  var texto1 = '\nLucas ';
  var texto2 = "Silva";
  var texto3 = '''\n e Bruna Maia\n''';

  var nome = texto1 + texto2 + texto3;
  print(nome);

  var verdadeiro = true;
  var falso = false;
  // $ - Variáveis // ${} - Operações
  print('verdadeiro = ${verdadeiro}'); // Interpolação
  print('falso = ' + "$falso");
  print(''.runtimeType); // Descobre o tipo de variável em tempo de execução
  const /* Variável Constante*/ pi = 3.14; // Variável constante é atribuido em tempo de compilação
  nome = 'Lucas'; // Forma errada de declarar, pq está sem tipo
  String sobrenome = 'Silva';
  int idade = 36;
  double altura = 1.77;
  bool adulto = true;

  print('\nnome: ' + "$nome \nQtd letras: ${nome.length} " + """\nSobrenome: $sobrenome \nQtd letras ${sobrenome.length}\n""");
  print(''' idade: $idade
  altura: $altura
  adulto: $adulto
  \npi: $pi\n''');

  dynamic variavel = 2.0; // Variável dinâmica, o dart define qual é o tipo
  variavel = 2;
  variavel = 'dois';
  variavel = true;
  print(variavel);
}
