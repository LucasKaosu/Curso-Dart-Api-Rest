/*
  * Conceito
  - Then registra callbacks que serão chamadas quando o Future for concluído.
    > onValue: Valor passado ao término do Future.
    > catchError: Se omitido é lançado como um exception!
      > test: Se qualquer lógica retornar true é lançado a exception!
    > whenComplete: Chama uma função anônima ao término do Future
*/

///
/// * FUNÇÕES ASSINCRONAS
///

Future<String> tarefa({int tempo = 1}) {
  return status(tempo).then((msg) {
    return '\nStatus: $msg';
  }).catchError(
    (onError) {
      return 'CatError: $onError';
    },
    test: (error) => error is! Future && error.runtimeType != Future,
  ).whenComplete(() {
    print('Future completa!');
  });
}

Future<String> status([int tempo = 1]) {
  return Future.delayed(Duration(seconds: tempo), () => Future.error('Erro Intencional'));
  //return Future.delayed(Duration(seconds: tempo), () => 'Primeira Tarefa finalizada\n');
}

///
/// * FUNÇÕES SINCRONA!
///

void contagem({int segundos = 3}) {
  print('Carregando...\n');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('\nConcluído');
    });
  }
}

main() {
  print('18.3.0) Then\n');

  contagem(segundos: 3);

  tarefa(tempo: 4).then((value) => print(value));
}
