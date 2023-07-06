///  * Assert
///   - Usa lógica boleana para testar afirmações no modo debug!
///   - Try/Catch pode ser usado para tratar a exceção!
///
///  * Test
///   - Certifique-se de ter o package "test" em "dev_dependencies" no arquivo "pubspec.yaml"
///   - Atualize o packages no terminal usando com "pub get"
///   - Execute os teste na pasta raiz usando "pub run test"
///   - Podemos testar variaveis, funções e efetuar teste em grupo
///
///  Sintaxe
///    test("Descrição", (){
///      expect(valorReal , valorEsperado)
///    });

import 'package:projeto/projeto.dart' as projeto;

void main(List<String> arguments) {
  print('19.0.0) Testes Unitarios\n');

  print('Hello world: ${projeto.calculate()}!');
  print('Listar Nomes: ${projeto.converterEmLista('Lucas Silva')}!');
  print('Verificar a maior idade: ${projeto.maioridade(17)}!');
  print('Recuperar nome: ${projeto.recuperarNome(['Lucas', 'Silva'])}!');
  print('Resto da divisão: ${projeto.restoDivisao(12, 3)}!');

  // fora do try catch gera exceção!
  String texto = "ata po";
  // ignore: unnecessary_null_comparison
  assert(texto != null);

  try {
    String telefone = '123456789';
    assert(telefone.length == 9, 'O telefone deve conter 9 dígitos');
  } catch (e) {
    print('Exceção: $e');
  }
}
