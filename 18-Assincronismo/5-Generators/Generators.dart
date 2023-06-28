/*
  * Conceitos:
  - Generators são funções Geradoras que produzem sequencias de valores usando:
    > Funções sincronas retornam Itarebles
    > Funções assincronas retornam Stream
*/

///
/// * yield
///   > Utilizado em funções geradoras sincronas e assíncronas
///   > Adiciona um valor ao fluxo de saída de função assíncrona * retornando sem encerrar a função!
///

funcoesGeradores() {
  print('18.5.1) Funções Geradoras\n');
  Iterable<int> funcaoSincrona(int repeticaoMaxima) sync* {
    int i = 0;
    while (i < repeticaoMaxima) yield ++i;
  }

  print(funcaoSincrona(5));

  Stream<int> funcaoAssincrona(int repeticaoMaxima) async* {
    int i = 0;
    while (i < repeticaoMaxima) yield ++i;
  }

  funcaoAssincrona(3).forEach((element) => print(element));
}

///
/// * yield*
///   > Utilizado em funções geradoras sincronas e assíncronas recursivas.
///   > Você poderá melhorar seu desempenho usando yield* usando gerador for recursivo
///

funcoesGeradoresRecursivas() {
  print('18.5.2) Funções Geradoras Recursivas\n');
  Iterable<int> funcaoSincrona(int repeticaoMaxima) sync* {
    for (int i = 1; i <= repeticaoMaxima; i++) {
      yield i;
      yield* funcaoSincrona(i - repeticaoMaxima);
    }
  }

  print(funcaoSincrona(3));

  Stream<int> funcaoAssincrona(int repeticaoMaxima) async* {
    for (int i = 1; i <= repeticaoMaxima; i++) {
      yield i;
      yield* funcaoAssincrona(i - repeticaoMaxima);
    }
  }

  funcaoAssincrona(3).forEach((element) => print(element));
}

///
/// * Try Catch
///   > Tratamento exceções!
///

tratamentoExcecoes() async {
  print('18.5.3) Funções Geradoras Tratamento de Exceções\n');

  Future<int> streamSoma(Stream<int> stream) async {
    var soma = 0;
    //await for (var valor in stream) {
    //soma += valor;
    //}
    //return soma;
    //}

    try {
      await for (var valor in stream) {
        soma += valor;
      }
    } catch (e) {
      return -1;
    }
    return soma;
  }

  Stream<int> streamContagem(int termino, {int erro = 0}) async* {
    for (var i = 1; i <= termino; i++) {
      //yield i;
      if (i == erro) {
        throw Exception('Exception Intencional!');
      } else {
        yield i;
      }
    }
  }

  var stream = streamContagem(10, erro: 3);
  var soma = await streamSoma(stream);
  print(soma);
  //stream.forEach((element) => print(element));
}

main() {
  //funcoesGeradores();
  //funcoesGeradoresRecursivas();
  tratamentoExcecoes();
}
