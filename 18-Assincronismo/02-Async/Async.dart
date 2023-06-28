/*
  * Sincrona:
  - Operações sincronas: Bloqueia a execução até que seja concluída!
  -Funções síncronas: Executa somente operações sincronas.

  * Assíncronas:
  - Operações assíncronas: Permite executar outras operações enquanto são processadas.
  - Funções Assíncronas: Executam ao menos uma operação assíncrona e operações síncronas.

  * Await:
  - Indica a espera uma operação assíncrona, conclusão de uma future!

  * Async:
  - Deve ser usado em toda função que tenha operações assíncronas, Await!
*/

///
/// * FUNÇÕES ASSINCRONAS
///

Future<String> tarefa({int tempo = 1}) async {
  var msg = await status(tempo);
  return 'Status: $msg';
}

Future<String> status([int tempo = 1]) {
  try {
    //Future.error('Tempo insuficiente para o Load programado!');
    if (tempo < 4) Exception('Tempo insuficiente para o Load programado!');
    return Future.delayed(Duration(seconds: tempo), () => 'Primeira Tarefa finalizada\n');
  } catch (e) {
    print('catch: $e');
    return Future.delayed(Duration(seconds: tempo), () => 'Agora deu a porra memo\n');
  }
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

main() async {
  print('18.2.0) Async Await\n');

  contagem(segundos: 3); // função sincrona!

  print(await tarefa(tempo: 4)); // função assincrona
}
