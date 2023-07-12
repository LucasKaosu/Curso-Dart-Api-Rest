/**
 *  * Conceito
 *    - Representational State Transfer (Transferência Representacional de Estado)
 *    - É uma arquitetura que define um conjunto de restrições na criação de web services.
 *    - É uma padronização para multiplas aplicações possam se comunicar usando protocolo HTTP.
 */

import 'dart:convert';

///
/// * SERIALIZAÇÃO MANUAL - Biblioteca JSON integrada ao dart 'dart:convert';
///
/// * Serialização JSON direta
///   - Perde recursos estatico de linguagens;
///   - Segurança de tipo, autocompletar e exceções de tempo de compilação.
///

conversaoDireta() {
  print('20.0.0) JSON Conversão Direta\n');

  String jsonData = ''' {
    "nome" : "Lucas",
    "idade" : 23,
    "email" : "lk@gmail"
  }
  ''';

  // DECODE
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  print('parsedJson: $parsedJson\n');
  String nome = parsedJson['nome'];
  int idade = parsedJson['idade'];
  String email = parsedJson['email'];
  print('USO DIRETO: nome: $nome idade: $idade e-mail: $email\n');

  // ENCODE
  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};
  String toJson = jsonEncode(map);
  print('ToJson: $toJson');
}

conversaoObjeto() {
  print('20.0.0) JSON Conversão Objeto\n');

  String jsonData = ''' [
    {
    "nome" : "Lucas",
    "idade" : 23,
    "email" : "lk@gmail"
  },
  {
    "nome" : "Lucas",
    "idade" : 23,
    "email" : "lk@gmail"
  }
  ]
  ''';

  // DECODE
  List<dynamic> parsedJson = jsonDecode(jsonData);
  print('parsedJson: $parsedJson\n');
  var listaUsuarios = ListaUsuarios.fromJson(parsedJson);
  Usuario? usuario = listaUsuarios.usuarios?.singleWhere((e) => e.nome == 'Lucas');
  print('USO OBJETO: nome: ${usuario?.nome} idade: ${listaUsuarios.usuarios?.elementAt(0).idade} email: ${listaUsuarios.usuarios?[0].email}\n');

  var usuarioNovo = Usuario.fromJson({'nome': 'Poppy', 'idade': 3, 'email': 'poppy@gmail.com'});
  listaUsuarios.usuarios?.addAll([usuarioNovo]);

  // ENCODE
  List<dynamic>? lista = listaUsuarios.toJson();
  String toJson = json.encode(lista);
  print('ToJson: $toJson');
}

main() {
  conversaoDireta();
  conversaoObjeto();
}

class ListaUsuarios {
  List<Usuario>? usuarios;

  ListaUsuarios({this.usuarios});

  //? Construtor com lista de inicialização, usa o this para passar os parametros para o cosntrutor default
  ListaUsuarios.fromJson(List<dynamic> json)
      : this(
          usuarios: json.map((e) => Usuario.fromJson(e)).toList(),
        );

  List<dynamic>? toJson() {
    return usuarios;
  }
}

class Usuario {
  String? nome;
  int? idade;
  String? email;

  //? Construtor default da clase
  Usuario({this.nome, this.idade, this.email});

  //? Construtor nomeado para criar nova instancia a partir de um map
//  Usuario.fromJson(Map<String, dynamic> json) {
//    this.nome = json['nome'];
//    this.idade = json['idade'];
//    this.email = json['email'];
//  }

  //? Constritor Factory retorna uma nova instancia do construtor default da classe a partir de um map
//  factory Usuario.fromJson(Map<String, dynamic> json) {
//    return Usuario(
//      nome: json['nome'],
//      idade: json['idade'],
//      email: json['email'],
//    );
// }

//? Construtor com lista de inicialização, define parametros de executar o escopo de construtor
//  Usuario.fromJson(Map<String, dynamic> json)
//  : nome= json['nome'],
//    idade= json['idade'],
//    email= json['email'] {
//    // configurações iniciais
//  }

//? Construtor com lista de inicialização, usa o this para passar os parametros para o cosntrutor default
  Usuario.fromJson(Map<String, dynamic> json)
      : this(
          nome: json['nome'],
          idade: json['idade'],
          email: json['email'],
        );

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'email': email,
    };
  }
}
