import 'package:projeto/projeto.dart';
import 'package:test/test.dart';

void main() {
  // TESTE VARIÁVEIS
  test('Converter Strings em Array', () {
    String texto = 'Lucas, Bruna, Poppy';
    expect(texto.split(','), equals(['Lucas', ' Bruna', ' Poppy']));
  });

  // TESTE FUNÇÕES
  test('calculate', () {
    expect(calculate(), 42);
  });

  group('Manipulador de Strings', () {
    test('Converter em Lista', () => expect(converterEmLista('Bruna maia'), equals(['Bruna', 'maia'])));
    test('Recuperar Nome', () => expect(recuperarNome(['Lucas', 'Silva']), allOf(contains('ucas'), isNot(startsWith('Ruc')), endsWith('cas'))));
  });

  group('Manipulação de ints', (){

  test('Resto da divisão', () => expect(restoDivisao(12, 3), equals(0)));
  test('Verificar maioridade', () {
      expect(maioridade(18), 'Adulto');
      expect(maioridade(17), 'Adolecente');
      expect(maioridade(13), 'Criança');
    });
  });
}
