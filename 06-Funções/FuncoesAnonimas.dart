funcoesAnonimas() {
  print('06.4.0) Funções Anônimas Conceito\n');

  print(''' SINTAXE
  
  (){
  print('Funcao Anonima'!);
  }
  
  ()=> print('Funcao Anonima usando sintaxe Arrow!);
  ''');

  print('\n06.4.1) Funções Anônimas como Variáveis\n');

  var variavelAnonima = () => print('Variável Anônima!');
  variavelAnonima();

  var variavelAnonimaParametro = (String msg) => print('Variável Anônima $msg');
  variavelAnonimaParametro('com parâmetro!');

  print('\n06.4.2) Funcções Anônimas como Parâmetros!\n');

  void executarFuncao(Function funcao) => funcao();
  executarFuncao(() => print('Função Anônima passada como parâmetro!'));
}

void main() {
  funcoesAnonimas();
}
