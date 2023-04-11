funcaoParametro() {
  print('06.3.1) Funções com parâmetros posicionasdo e default\n');

  /// Parâmetro posicionado utiliza ' [] ' e deve sempre ser iniciado pelo
  /// ultimo parâmetro informado e pode percorrer os outros, porem deve iniciar
  /// pelo ultimo informado, esse tipo de parâmetro serve para que ao invocar
  /// sua função ela não retorne erro caso seu parâmetro não seja informado,
  /// você pode preencher com um valor default ou simplesmente deixa-lo vazio
  /// oq acarreta em um retorno null
  void exibirDados1(String nome, [int peso = 100, double? altura]) {
    print('Nome: $nome peso: $peso altura: $altura');
  }

  exibirDados1('Lucas');
  exibirDados1('Lucas', 110, 1.78);
  // OBS: Com o parâmetro posicional, você deve informar todos os posicionais
  // ou nenhum, não pode ser apenas 1.

  /// Parâmetro nomeado utiliza ' {} ' e ultiliza as mesmas regras de funcionamento
  /// que os parâmetros posicionais, porém com adicionais, esse tipo de parâmetro
  /// não precisa respeitar a posição em que foram criados na função, porém é
  /// exigido que seja informado o nome do parâmetro na hora de serem invocados.
  print('\n06.3.2) Funções com parâmetros nomeado e dafault\n');

  exibirDados2(String nome, {int peso = 100, double? altura}) {
    print('Nome: $nome peso: $peso altura: ${altura ?? 'Não informada!'}');
  }

  exibirDados2('Lucas');
  exibirDados2('Lucas', altura: 1.78, peso: 110);
  //OBS: Podem ser declarados fora de ordem, mas exigem nomeação.

  print('\n06.3.3) Funções como parâmetros para outras funções\n');

  void falar() {
    print('Essa é uma função passada como parâmetro nomeado!');
  }

  void saudacao(String nome, {Function? funcaoFalar}) {
    print('Olá, eu sou $nome');
    funcaoFalar!();
  }

  saudacao('Lucas', funcaoFalar: falar);
  saudacao('Lucas', funcaoFalar: () => print('Essa é uma função anônima passada como parâmetro nomeado.'));
}

void main() {
  funcaoParametro();
}
