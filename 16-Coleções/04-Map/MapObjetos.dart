import 'Carro.dart';
import 'Pessoa.dart';

main() {
  print('16.4.5) Map Objetos\n');
  Carro c1 = Carro('Honda', 'Civic');
  Carro c2 = Carro('Toyota', 'Corola');
  Carro c3 = Carro('Fiat', 'Palio');
  Map<String, Carro> carros = {'0': c1, '1': c2};
  carros['2'] = c3;

  for (var i = 0; i < carros.length; i++) {
    print('for: $i ${carros["${i}"]?.modelo}'); // se ordenado por string ou num pode usar for
  }
  for (var chave in carros.keys) {
    final carro = carros[chave];
    print('forIn: $chave ${carro?.modelo}');
  }
  carros.forEach((key, value) => print('forEach: $key ${value.modelo}'));

  print('\n16.4.5) Map Singletons\n');

  Pessoa p1 = Pessoa('Lucas', idade: 23, peso: 110);
  Pessoa p2 = Pessoa('Bruna', idade: 22, peso: 60);
  Pessoa('Lucas', idade: 25);
  Pessoa('Bruna', idade: 13);
  Pessoa('Poppy');
  Pessoa.mostrarPessoa();
  p1.peso = 70;
  Pessoa.mostrarDetalhes('Lucas');
  p2.peso = 61;
  Pessoa.alterarDetalhes('Poppy', idade: 2, peso: 10);
  Pessoa.mostrarPessoa();
}
