///
/// * Conceito
///   - Map é uma coleção dinamica e customizavel de chaves e valores entre {}
///   - As chaves são únicas, e os valores não se repetem!
///

// ignore_for_file: unused_local_variable

linkedHashMap() {
  print('16.4.0) LinkedHashMap == Map\n');

  List<String> nomes = ['Lucas', 'Bruna'];
  Map<int, String> nomesMap = nomes.asMap(); // converte List em Map
  print('\n$nomesMap');
  nomesMap.forEach((key, value) => print('$key: $value'));

  Map<String, dynamic> frutas = Map();
  frutas['banana'] = 'amarela';
  frutas['banana'] = 'verde'; // mesma chave, atualiza o valor
  frutas['goiaba'] = 'amarela';
  frutas['maca'] = 'vermelha';
  print('\n$frutas');
  print(frutas.containsKey('banana'));
  print(frutas.containsValue('azul'));
  print(frutas['banana']);
  frutas.clear(); // limpa todo o Map
  //frutas[null] = null; // não aceita devido ao nusafety

  Map<String, dynamic> usuario = Map.from({'nome': 'Lucas', 'idade': 23, 'peso': 105.25});
  usuario.update('nome', (value) => '$value Silva'); // Adiciona ao final
  usuario.update('idade', (value) => ++value);
  usuario.update('peso', (value) => 90, ifAbsent: () => 'indefinido');
  print(usuario);
  usuario.removeWhere((key, value) => key == 'peso' && value == 90);
  usuario.update('peso', (value) => 90, ifAbsent: () => 'indefinido');
  usuario.putIfAbsent('altura', () => 1.77);
  usuario.addAll({'sexo': 'masculino', 'casado': false});
  print('\n$usuario');
  print('chaves: ${usuario.keys} \n${usuario.values}');

  Map<int, dynamic> numeros = {0: 'zero', 1: 'um', 2: 'dois'};
  print(numeros);
  print(numeros.map((key, value) => MapEntry(key, '${value.toUpperCase()}'))); // Mapeando valores
  for (var key in numeros.keys) {
    print('forIn: $key');
  }
  for (var value in numeros.values) {
    print('forIn: $value');
  }
  for (var key in numeros.keys) {
    final valor = numeros[key];
    print('forIn: chave $key valor ${valor.toUpperCase()}');
  }
}

///
///* Map
/// - Map transforma/seleciona os elementos de uma coleção criando uma nova do mesmo tamanho!
///

mapMap() {
  print('\n16.4.1) Map map\n');

  List<Map<String, dynamic>> carrinho = [
    {'nome': 'Borracha', 'preco': 3.45},
    {'nome': 'Caderno', 'preco': 13.9},
    {'nome': 'KitLapis', 'preco': 41.22},
    {'nome': 'Caneta', 'preco': 7.5},
  ];
  dynamic porcetagem(desconto) => (valor) => desconto * valor['preco']; // closure // não pode ser dynamic pois retorna erro
  final moeda = (e) => 'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';
  List<dynamic> preco1 = carrinho.map(porcetagem(.9)).map(moeda).toList();
  List<String> preco2 = carrinho.map((e) => e.update('preco', (e) => e * .9)).map(moeda).toList();
  String precoMedio = (carrinho.map((e) => e['preco']).reduce((p, c) => p * c) / carrinho.length).toStringAsFixed(2);
  print('Lista Preco1: $preco1\nLista Preco2 $preco2\nPreco Medio: $precoMedio');

  List<Map<String, Object>> escola = [
    {
      'nome': 'Turma T1',
      'alunos': [
        {'nome': 'Lucas', 'nota': '9.1'},
        {'nome': 'Bruna', 'nota': '10'},
      ]
    }, // Obj do índice 0
    {
      'nome': 'Turma T2',
      'alunos': [
        {'nome': 'Poppy', 'nota': '9.8'},
        {'nome': 'Bolinha', 'nota': '8.6'},
      ]
    } // Obj do índice 1
  ];

  var alunosEscola = escola.map((e) => e['alunos']);
  print('Lista Ordenada: $alunosEscola');
}

///
///* Conceito
/// - Every faz o teste em 'todos' elementos com o operador lógico && retornando (true or false)
///

everyMap() {
  print('\n16.4.2) Map Every\n');

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Lucas', 'idade': 23},
    {'nome': 'Bruna', 'idade': 22},
    {'nome': 'Poopy', 'idade': 3},
  ];
  print(pessoas.every((element) => element.containsKey('nome'))); // verifica se contem essa chave 'nome'
  print(pessoas.every((element) => element['idade'] >= 17)); // verifica se todos os valores da chave 'idade' correspendem ao teste lógico
  bool maiores = pessoas.every((element) => element['nome'].startsWith('L')); // verifica se todos os valores da chave 'nome' correspendem ao teste lógico
  print(maiores);
}

///
///* Conceito
/// - Where filta os elementos da coleção criando uma nova do mesmo tamanho ou menor!
///

whereMap() {
  print('\n16.4.3 Map Where\n');

  List<Map<dynamic, dynamic>> produtos = [
    {'nome': 'Notebook', 'preco': 2499, 'fragil': true},
    {'nome': 'IPad', 'preco': 4199, 'fragil': true},
    {'nome': 'IPhone', 'preco': 2299, 'fragil': true},
    {'nome': 'Magic Mouse', 'preco': 299, 'fragil': false},
  ];
  final fragil = (e) => e['fragil'] == true;
  final nome = (e) => e['nome'];
  var resultado = produtos.where(fragil);
  print('Produtos frágeis: $resultado\n');

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Lucas', 'idade': 23},
    {'nome': 'Bruna', 'idade': 22},
    {'nome': 'Ellen', 'idade': 15}
  ];
  List<Map<String, dynamic>> maiores = pessoas.where((element) => element['idade'] >= 18).toList();
  Map<String?, dynamic?> comecaComL = pessoas.firstWhere((element) => element['nome'].startsWith('L'), orElse: () => {'nome': 'Null', 'idade': null});
  Map<String?, dynamic?> menores = pessoas.singleWhere((element) => element['idade'] < 18);
  final dynamic idades = (e) => e['idade'];
  final dynamic soma = (p, c) => p + c;
  var media = (pessoas.map(idades).reduce(soma)) / pessoas.length;
  print('Menores: $menores \nMaiores: $maiores\nMédia idades: $media \nNomes com L: ${comecaComL ?? 'Nenhum'}');
}

///
///* Conceito
/// - Reduce compara os elementos da coleção retornando 1 único elemento resultante!
/// - Ao interagir com os elementos o índice 0 se torna o anterior, índice 1 se torna o atual.
///

reduceMap() {
  print('\n16.4.4) Map Reduce\n');

  List<Map<String, dynamic>> alunos = [
    {'nome': 'Lucas', 'nota': 9.0, 'bolsista': true},
    {'nome': 'Bruna', 'nota': 9.5, 'bolsista': false},
    {'nome': 'Nayara', 'nota': 7.3, 'bolsista': false},
    {'nome': 'Samarah', 'nota': 8.0, 'bolsista': true}
  ];
  final dynamic bolsistas = (e) => e['bolsista'] as bool;
  final dynamic nomes = (e) => e['nota'];
  final dynamic notas = (e) => e['nota'];
  final dynamic soma = (p, c) => p + c;
  List<dynamic> bolsistaNomes = alunos.where(bolsistas).map(nomes).toList();
  List<Map<String, dynamic>> medias = alunos.where(bolsistas).toList();
  var bolsistasMedia = medias.map(notas).reduce(soma) / medias.length;
  bool todosBolsistas = alunos.map(bolsistas).reduce((p, c) => p && c);
  bool algumBolsista = alunos.map(bolsistas).reduce((p, c) => p || c);
  print('Todos são bolsistas? ${todosBolsistas ? 'sim' : 'não'}\nAlgum bolsista? ${algumBolsista ? 'sim' : 'não'}');
  print('Alunos Bolsistas: $bolsistaNomes Médias notas: $bolsistasMedia');

  List<dynamic> funcionarios = [
    {'nome': 'Lucas', 'genero': 'M', 'pais': 'EUA', 'salario': 12450.00},
    {'nome': 'Bruna', 'genero': 'F', 'pais': 'Brasil', 'salario': 7500.00},
    {'nome': 'Raluca', 'genero': '?', 'pais': 'Ralucolândia', 'salario': 100.00}
  ];
  final dynamic brasileiros = (e) => e['pais'] == 'Brasil';
  final dynamic mulheres = (e) => e['genero'] == 'F';
  final dynamic menorSalario = (p, c) => p['salario'] < c['salario'] ? p['salario'] : c['salario']; // filtro para salarios
  final dynamic funcMenorSalario = (p, c) => p['salario'] < c['salario'] ? p : c; //filtro para funcionarios
  List<dynamic> selecionados = funcionarios.where(brasileiros).where(mulheres).toList();
  print(selecionados);
  print(selecionados.reduce(menorSalario));
  Map<String, dynamic> funcionario = selecionados.reduce(funcMenorSalario);
  print('Funcionário: ${funcionario['nome']} salário: ${funcionario['salario']}');
}
main() {
  linkedHashMap();
  mapMap();
  everyMap();
  whereMap();
  reduceMap();
}
