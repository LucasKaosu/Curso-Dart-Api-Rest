// ignore_for_file: unnecessary_type_check

import 'dart:math';

///
/// * Conceito:
///  - List é uma coleção dinâmica e ordenada de elementos entre colchetes []
///  - forEach: Aplica a função anônima a cada elemento da nossa coleção
///  - Todo array é um List<>
///

listForEach() {
  print('16.1.0) List ForEach\n');

  var array = [0, 2.5, 5, 7.25, 10];
  array.forEach((element) {
    print('ForEach: $element');
  });

  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];
  List<bool> boleans = [true, false, !true, !false];
  List<String> frutas = ['Morango', 'Banana', 'Tomate'];

  print('\nImplementação: ${frutas.runtimeType}');

  print('\nBoleans [3]: ${(boleans[inteiros.length]) ? 'Verdadeiro' : 'Falso'}\n');

  frutas.insert(0, 'Abacaxi'); // Adiciona na posição que quiser
  frutas.add('Laranja'); // Adiciona na ultima posição do vetor
  frutas.forEach((e) => print('ForEach: $e')); // Percorre item a item do vetor
  print(frutas);
  frutas.removeLast(); // Remove a ultima posição do vetor
  frutas.removeWhere((e) => e == 'Banana'); // Remove de acordo com a condição
  print(frutas);
  print(frutas.elementAt(2)); // Mostra a posição index do vetor
  print(frutas.contains('abacaxi')); // Camelcase, não identificou pois o "a" não é maiusculo

  List<num> numeros = List.from(inteiros) // Copia os elementos da lista
    ..addAll(doubles); // Copia os elementos da lista
  print('\n$numeros');
  numeros.shuffle(); // Mistura os elementos
  print('\n$numeros');
  numeros.sort(); // Ordena os elementos
  print('\n$numeros');
  //  espaço                            // Skip pula a quantidade de elementos da lista
  List<dynamic> lista = numeros.take(3).skip(1).take(2).toList(); // Take pega a quantidade de index e to list serve pra implementar
  print('Lista: $lista');

  // Geradores de Lista
  List<String> listaPreenchida = List.filled(2, 'Elemento');
  // Cria uma lista com a quantidade de elementos que foram descritos no parâmetro 2
  List<String> listaGerada = List.generate(2, (i) => 'Nome ${i}');
  // Cria uma lista com a quantidade de elementos que foram descritos e tem um contador
  List<double> listaPrecos = List.generate(5, (i) => double.parse(((i + 1) * Random().nextDouble()).toStringAsFixed(2)));
  print('Lista Preenchida: $listaPreenchida \nLista Gerada: $listaGerada \nLista Preços: $listaPrecos');
  listaPrecos.forEach((e) => print('ForEach: $e'));
}

listExpand() {
  print('\n16.1.1) List Expand\n');

  var lista = [
    [1, 2],
    [3, 4]
  ];

  List<dynamic> listaFlat = lista.expand((element) => element).toList();
  List<dynamic> listaDuplicada = listaFlat.expand((element) => [element, element]).toList();
  print('ListaFlat: $listaFlat \nListaDuplicada $listaDuplicada');

  List<num> numeros = [1, 2.5, 5, 7.25, 10];
  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];

  List<dynamic> listaDinamica = [];
  print('$listaDinamica');
  print(listaDinamica = [1, 5, 10] + [2, 7]);
  print(listaDinamica = []
    ..addAll(inteiros)
    ..addAll(doubles));

  print('Exemplo 1 operador Spread: ${listaDinamica = [0, ...inteiros, 15]}');
  print('Exemplo 2 operador Spread: ${listaDinamica = [...[], ...inteiros, if (doubles is List<double>) ...doubles]}');
  print('Exemplo 3 operador Spread: ${listaDinamica = [...[], for (var numero in numeros) numero]}');
}

///
/// * Map:
///  - Transforma/Seleciona os elementos de uma coleção e cria uma nova com o mesmo tamanho
///

listMap() {
  print('\n16.1.2) List Map\n');

  List<String> frutas = ['Morango', 'Banana', 'Tomate'];
  List<String> frutasMapeadas = frutas.map((e) => '$e é uma fruta!').toList();
  print(frutasMapeadas);

  List<int> inteiros = [1, 5, 10];
  var incrementar = (int e) => ++e; // incremeta antes de executar o map
  final dobro = (int e) => e * 2;
  List<int> inteirosMapeados = inteiros.map(incrementar).map(dobro).toList();
  // Todos os atributos devem ser iguais no seu tipo, se não o map ira retornar erro
  print(inteirosMapeados);

  List<double> doubles = [2.75, 5.5, 7, 25];
  final triplo = (e) => e * 3;
  //final Function moeda = (e) => 'RS ${e.toDouble().toStringAsFixed(2).replaceFirts('.', ',')}'; // não funciona
  //Function porcetagem(desconto) => (valor) => desconto * valor; // closure // não funciona
  List<dynamic> doublesMapeados = doubles.map(triplo).toList();
  print(doublesMapeados);
}

///
/// * Every:
///  - Faz o teste em todos os elementos de um array, utilizando o operador lógico
///    '&&' retornando um valor booleano (true or false)
///

listEvery() {
  print('\n16.1.3) List Every\n');

  List<int> inteiros = [0, 1, 2, 3, 4, 5];
  bool resultado = inteiros.every((e) => e > 0);
  print(resultado);
  List<String> textos = List.from(['Lucas', 'Bruna', 'Lucimar']);
  resultado = textos.every((e) => e.contains('a'));
  print(resultado);
}

///
/// * Where:
///  - Filtra os elementos da coleção e cria uma nova do mesmo tamanho ou menor
///

listWhere() {
  print('\n16.1.4) List Where\n');

  List<int> idades = [36, 12, 18, 31, 17, 23];
  print(idades.where((element) => element is int)); // retorno em Interable // verifica a especificação dada
  print(idades.whereType<int>()); // verifica pelo tipo
  List<int> adultos = idades.where((int e) => e > 17).toList(); // verifica a especificação dada e retorna um novo array
  var crianca = idades.singleWhere((int element) => element < 12, orElse: () => 0); // verifica a especificação e se não for atendida o orElse setta o default
  int menor = idades.lastWhere((element) => element.toString().startsWith('0'), orElse: () => 0);
  // retorna o ultimo elemento compativel com a condição dada
  print('Adulto $adultos \nMenor $menor \nCriança $crianca');
}

///
/// * Reduce:
///  - Compara os elementos da coleção retornando 1 unico elemento resultante;
///  - Ao interagir com os elementos o índice 0 se torno o anterior e índice 1 se torna o atual.
///

listReduce() {
  print('\n16.1.5) List Reduce\n');

  List<int> numerosPares = List.generate(6, (i) => i * 2);
  print(numerosPares);
  int resultado = numerosPares.reduce((anterior, atual) {
    print('$anterior + $atual');
    return anterior + atual; // o retorno será o próximo anterior;
  });
  print(resultado);

  List<bool> boleanas = [true, false, !true, !false];
  bool and = boleanas.reduce((anterior, atual) => anterior && atual);
  bool or = boleanas.reduce((anterior, atual) => anterior || atual);
  print('and: $and or: $or');

  List<int> idades = [36, 12, 18, 31, 17, 23];
  int maisNovo = idades.reduce((anterior, atual) => (anterior > atual) ? atual : anterior);
  int maisVelha = idades.reduce((anterior, atual) => (anterior < atual) ? atual : anterior);
  int media = idades.reduce((anterior, atual) => anterior + atual);
  print('mais novo $maisNovo mais velho: $maisVelha media: ${(media / idades.length).toStringAsFixed(1)}');
}

///
/// * Fold:
///  - Compara os elementos da coleção retornando 1 único elemento resultante!
///  - O valor inicial se torna o anterior e o índice 0 se torna o atual.
///

listFold() {
  print('\n16.1.6) List Fold\n');

  List<int> numerosPares = List.generate(6, (i) => i * 2);
  print(numerosPares);
  int valorInicial = 10;
  int resultado = numerosPares.fold(valorInicial, (anterior, atual) {
    print('$anterior + $atual');
    return anterior + atual;
  });
  print('$resultado');

  valorInicial = 30;
  resultado = numerosPares.fold(valorInicial, (anterior, atual) {
    print('$anterior - $atual');
    return anterior - atual;
  });
  print(resultado);
}

void main() {
  listForEach();
  listExpand();
  listMap();
  listEvery();
  listWhere();
  listReduce();
  listFold();
}
