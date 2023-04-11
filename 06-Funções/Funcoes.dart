void semRetorno() {
  print('06.0) Funções sem retorno\n');
  void conceito() {
    print('Função void sem retorno');
  }

  void somaValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    print('Soma $valorA + $valorB = $resultado');
  }

  void verificarMaioridade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'É maior';
    } else {
      resposta = 'Não é maior';
    }
    print('$nome $resposta de idade!');
  }

  void contagemRegressiva(int numero) {
    for (var i = numero; i >= 0; i--) {
      print('Contagem: ${(i == 0) ? 'VAI!!!' : i}');
    }
  }

  converterKMparaMilhas(dynamic Array) {
    dynamic milha = 0.621271;
    for (dynamic item in Array) {
      print('$item\t Km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    print('Array convertido e arredondado!');
  }

  conceito();
  somaValores(2, 3);
  verificarMaioridade('Lucas', 23);
  contagemRegressiva(3);
  converterKMparaMilhas([1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]);
}

comRetorno() {
  print('\n06.1) Funções com retorno\n');

  String conceito() {
    return 'Função com retorno String';
  }

  String somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    return 'Soma $valorA + $valorB = $resultado';
  }

  String verificarMaioridade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'É maior';
    } else {
      resposta = 'Não é maior';
    }
    return '$nome $resposta de idade!';
  }

  String contagemRegressiva(int numero) {
    var resultado;
    for (var i = numero; i >= 0; i--) {
      (i != 0) ? print('Contagem: $i') : resultado = 'Contagem Vaii!!!';
    }
    return resultado;
  }

  converterKMparaMilhas(dynamic Array) {
    dynamic milha = 0.621271;
    for (dynamic item in Array) {
      print('$item\t Km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    return 'Array convertido e arredondado!';
  }

  print(conceito());
  print(somarValores(2, 3));
  print(verificarMaioridade('Lucas', 23));
  print(contagemRegressiva(3));
  print(converterKMparaMilhas([1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]));
}

void main() {
  semRetorno();
  comRetorno();
}
