///
/// Uma Closure ocorre quando uma função é declarada dentro do corpo de outra função
/// Podemos retornar as variáveis locais e da função superior
///

funcaoClosures() {
  print('06.5.1) Closures sem Retorno\n');

  /// Assim como fizemos com as funções anônimas, atribuimos a uma variável uma função
  /// primeiro criamos a função anônima na variável saudação com um parâmetro
  /// String nome, e logo em seguida fizemos outra função anônima, atribuida
  /// dessa vez a variável mensagem.
  var saudacao = (String nome) {
    var mensagem = (complemento) => print('Ola $nome! $complemento');
    mensagem('Seja bem vindo!');
  };

  print(saudacao);
  saudacao('Lucas');

  /// Passamos então o valor do "complemento" ainda dentro da função menor e depois
  /// passamos o valor de "nome" direto na chamada da função que está em saudação
  /// dessa forma foi executado as duas funções, formando nossa frase.
  /// =============================================================================

  print('\n06.5.2) Closures com Retorno\n');

  ///Dessa vez fizemos como no exemplo acima, mas nossas função irão retornar valores
  ///criamos então a função somar e demos parâmento "valorA", depois no retorno de somar
  ///criamos uma função anônima com o parâmetro "valorB" e retornamos dela a soma dos 2
  Function somar(int valorA) {
    //Criando primeira função
    print(valorA);
    return (valorB) {
      //Criando no return uma função anônima
      print(valorB);
      return valorA + valorB; //Retornando a soma
    };
  }

  var somarDez = somar(10);
  print(somarDez(5));

  /// Criamos uma variável para receber a "Function somar" e atribuimos seu parâmetro
  /// porém como temos 2 parâmetro, na hora de printar foi necessário que atribuissimos
  /// mais um valor, esse por sua vez estará atribuindo ao parâmetro de "valorB"
  /// =============================================================================

  /// Temos agr uma closure feita em arrow function, vamos configurar um ambiente
  /// que contém 2 funções em uma única linha
  Function porcetagem(desconto) => (valor) => desconto * valor; // Arrow function
  var descontarDez = porcetagem(.9); // Nova função, tendo função "porcetagem" como closure
  var descontarVinte = porcetagem(.8); // Nova função tendo a função "porcetagem" como closure
  print('\n${descontarDez(100)}');
  print(descontarVinte(200));

  /// Prints atribuindo o "valor" da função anônima que existe na função porcetagem
  /// =============================================================================

  print('\n06.5.3) Closures com Objetos\n');

  ///Criamos mais uma vez uma closure sendo ela, uma função anônima dentro da var
  ///"novoObjeto" e depois outra anônima dentro do var "objetoCriado" recebendo 2
  ///parâmetros, utilizamos o return de "objetoCriado" para fazer um print, da var
  ///"id" que por interpolação é convertida em string e utilzia a função padleft
  ///para configurar como id será exibida.
  ///depois utilizamos o return de "novoObjeto" para retornar "objetoCriado"
  var novoObjeto = () {
    //primeira função anônima
    var id = 0;
    var objetoCriado = (String nome, descricao) {
      //segunda função anônima
      return 'id: ${(++id).toString().padLeft(2, '0')} nome $nome, descrição $descricao'; // Retornar para um array
    };
    return objetoCriado;
  };

  /// Criamos então um objeto recebendo a função "novoObjeto" e criamos um array
  /// esse array recebe os parâmetros da funções closures acima incluindo o return
  /// String que se torna o "objeto"
  var objeto = novoObjeto();
  print(objeto);

  var listaObjetos = [objeto('Lucas', 1.99)];
  listaObjetos.add(objeto('Galaxy S9+', 3000.00));
  listaObjetos.add(objeto('Fones', 199.00));

  /// Utilizamos um for in para printar o conteúdo do array utilizando o print
  /// da função closure, e utilizamos a função "substring" para formatar o texto
  for (var objeto in listaObjetos) {
    print(objeto.substring(7));
  }

  /// HashMap 1

  var novoObjeto1 = () {
    //primeira função anônima
    var id = 0;
    var objetoCriado1 = (String nome, descricao) {
      //segunda função anônima + formatação para return de um Map
      return {id: (++id).toString().padLeft(2, '0'), 'nome': nome, 'descrição: ': descricao};
    };
    return objetoCriado1;
  };

  /// Criação do objeto
  var objeto1 = novoObjeto1();
  print(objeto1);

  var listaObjetos1 = [objeto1('Lucas', 1.99)];
  listaObjetos1.add(objeto1('Galaxy S9+', 3000.00));
  listaObjetos1.add(objeto1('Fones', 199.00));

  /// Utilizamos um for in para printar o conteúdo do array utilizando o print
  /// da função closure, e utilizamos a função "substring" para formatar o texto
  for (var objeto1 in listaObjetos1) {
    /// Declaração de um HashMap, aqui declaramos a c, v como "chave" e "valor"
    /// verificamos se v é um double e se for aplica o desconto de 10% se não
    /// apenas é printado no terminal o valor
    print(objeto1.map((c, v) => MapEntry(c, (v is double) ? '${descontarDez(v)}' : v)));
  }

  // HashMap 2
  var novoObjeto2 = () {
    //primeira função anônima
    var id = 0;
    var objetoCriado2 = (String nome, descricao) {
      //segunda função anônima
      return Objeto.fromMap({'id': (++id).toString().padLeft(2, '0'), 'nome': nome, 'descrição: ': descricao});
    };
    return objetoCriado2;
  };

  /// Criamos então um objeto recebendo a função "novoObjeto" e criamos um array
  /// esse array recebe os parâmetros da funções closures acima incluindo o return
  /// String que se torna o "objeto"
  var objeto2 = novoObjeto2();
  print(objeto2);

  var listaObjetos2 = [objeto2('Lucas', 1.99)];
  listaObjetos2.add(objeto2('Galaxy S9+', 3000.00));
  listaObjetos2.add(objeto2('Fones', 199.00));

  /// Utilizamos um for in para printar o conteúdo do array utilizando o print
  /// da função closure, e utilizamos a função "substring" para formatar o texto
  for (var objeto2 in listaObjetos2) {
    //print(objeto2.map((c, v) => MapEntry(c, (v is double) ? '${descontarDez(v)}' : v)));
    print((objeto2.descricao is num) ? descontarVinte(objeto2.descricao) : objeto2.descricao);
  }
}

/// Declaração de um objeto
class Objeto {
  String? id, nome;
  dynamic descricao;

  /// Construtor do objeto
  Objeto({this.id, this.nome, this.descricao});

  /// Método Factory
  factory Objeto.fromMap(Map<String, dynamic> map) {
    /// Retorno de objeto como HashMap
    return Objeto(id: map['id'].toString(), descricao: map['descricao']);
  }
}

void main() {
  funcaoClosures();
}
