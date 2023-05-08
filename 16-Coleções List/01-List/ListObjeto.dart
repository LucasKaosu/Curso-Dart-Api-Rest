import 'Models/Pessoa.dart';
import 'Models/Proprietario.dart';
import 'Models/Vendedor.dart';

main() {
  print('16.1.7) List manipulando Objetos\n');

  Pessoa p1 = Pessoa('Lucas', 'Silva', identidade: 12345678);
  Pessoa p2 = Pessoa('Bruna', 'Maia', identidade: 87654321);
  List<Pessoa> pessoas = [p1, p2];
  pessoas.add(Pessoa('Nayara', 'Pereira'));

  for (var i = 0; i < pessoas.length; i++) {
    print('for: ${pessoas[i].nome} ${pessoas[i].sobrenome} id: ${pessoas[i].identidade}');
  }
  print('');

  for (var pessoa in pessoas) {
    print('for in: ${pessoa.nome} ${pessoa.sobrenome} id: ${pessoa.identidade}');
  }
  print('');
  pessoas.forEach((e) => print('foreach: ${e.nome} ${e.sobrenome} id: ${e.identidade}'));

  print('\n16.1.8) List Ordenando Objetos\n');

  List<Vendedor> vendedores = [];
  vendedores.add(Vendedor('Lucas', [Venda('IphoneX', 4199.99), Venda('Macbook Pro', 5300.0), Venda('GalaxyS10', 3500.25)]));
  vendedores.add(Vendedor('Bruna', [Venda('Iphone8', 3000.00), Venda('Macbook Pro', 5300.0), Venda('GalaxyS10', 3500.25)]));
  vendedores.add(Vendedor('Nayara', [Venda('Iphone8', 3000.00), Venda('GalaxyS10', 3500.25), Venda('GalaxyS20', 5199.99)]));
  // Organizar pela soma total
  vendedores.sort((b, a) => (a.vendas.fold(0.00, (anterior, atual) => anterior + atual.preco).compareTo(b.vendas.fold(0.00, (anterior, atual) => anterior + atual.preco))));
  // Organizar as vendas de cada vendedor
  vendedores.forEach((e) => e.vendas.sort((b, a) => a.preco.compareTo(b.preco)));
  vendedores.forEach((e) => print('Vendedor #${e.nome} \t ${e.vendas.length} vendas \t totalizando ${e.vendas.fold(0.00, (anterior, atual) => anterior + atual.preco)} reais \t vendas: ${e.vendas.map((e) => e.preco).toList()}'));

  print('\n16.1.9) List escopo de loops em Objetos\n');

  List<Proprietario> proprietarios = [];
  proprietarios.add(Proprietario('Lucas', 'Rua 04 n 0', [
    Carro('hyundai', 'Corolla', 'ABC1575', Caracteristicas('Passeio', 5, 130, 'Flex'), multas: [Multas('Excesso de Velocidade', 'Gravíssima', 7), Multas('Estacionar em local Indevido', 'Grave', 5)]),
    Carro('Honda', 'Civic', 'ABC2857', Caracteristicas('Passeio', 5, 150, 'Flex'), multas: [Multas('Excesso de Velocidade', 'Gravíssima', 7), Multas('Estacionar em local Indevido', 'Grave', 5)]),
  ]));

  proprietarios.forEach((e) => e.carros.forEach((e) => e.multas?.sort((a, b) => a.pontos.compareTo(b.pontos)))); // multas em ordem crescente

  for (var i = 0; i < proprietarios.length; i++) {
    var carros = proprietarios[i].carros;
    for (var carro in carros) {
      carro.multas?.forEach((e) {
        print('processo ${proprietarios[i].nome} \t ${carro.modelo} ${carro.placa} ${carro.caracteristicas.tipo} \t ${e.descricao} ${e.tipo} - ${e.pontos} pontos');
      });
    }
  }
}
