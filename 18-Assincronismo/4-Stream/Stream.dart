/*
  * Conceito:
  - Stream é uma forma de monitorar eventos. Ao Adicionar eventos na stream os ouvintes serão notificados!
    * As streams uma sequência assincrona de dados. Para processar uma stream use await() ou listen().
    * Existem dois tipos de stream: assinatura única(subscription) ou transmissão(broadcast).
    * Stream é uma sequência com varios Futures! Ao invez de obter um evento solicitado(Future), a stream informa que há um evento quando está pronto.

  * stream
  - Adiciona eventos na stream notificando os ouvintes que estão monitorando!

  * listen()
  - Inscreve um ouvinte na stream para aguardar notificações de eventos.
    * onData: Notifica o assinante com eventos de dados da stream, se for nulo, nada acontece.
    * onError: Tratamento de eventos com erro e possivel rastreamento Stack Trace. Se omitido erros serão considerados exceptions!
    * onDone: Evento chamado quando a stream é fechada.
    * cancelOnError: A assinatura é cancelada automaticamente ao receber um erro!
*/

import 'dart:async';

///
/// * Conceito
///

conceito() {
  print('18.4.1) Stream Conceito \n');

  List<dynamic> lista = [];

  //1) controlador
  var controlador = StreamController<dynamic>();

  //2) stream
  var stream = controlador.stream;

  //3) inscrição de ouvinte na stream
  stream.listen((onData) {
    print('Evento: $onData');
    lista.add(onData);
  }, onDone: () {
    print('Stream finalizada!');
    print(lista);
  });

  //4) adicionar um evento a stream
  controlador.sink.add('Lucas');
  controlador.sink.add(23);
  controlador.sink.add(1.75);
  controlador.sink.add(!false);
  controlador.close();

  print('Monitorando...');
}

///
/// * Model
///

class Contador {
  var _contagem = 1, termino, erro;
  final _controlador = StreamController<int>();

  Sink<int> get sink => _controlador.sink; // não expor o controlador, exponha as interfaces
  Stream<int> get stream => _controlador.stream;

  Contador({this.termino = 5, this.erro = 3}) {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _contagem < termino ? sink.add(_contagem) : sink.close();
      ~_contagem++;
      if (_contagem == erro) _controlador.addError('Erro intencional');
      if (_contagem > termino) timer.cancel();
    });
  }
}

model() {
  print('18.4.2) Stream Model\n');

  // stream
  var minhaStream = Contador(termino: 5, erro: 3).stream.asBroadcastStream();

  // inscrição de ouvintes na stream
  final inscrito1 = minhaStream.listen(
    (onData) {
      print('Inscrito 1: $onData');
    },
    onError: (erro) {
      print('Inscrito1: $erro');
    },
    cancelOnError: false,
    onDone: () {
      print('Inscrito 1 Completo!');
    },
  );

  var pares = (e) => e % 2 == 0;
  var mapear = (e) => '$e é par';

  // modificar eventos
  // ignore: unused_local_variable
  final inscrito2 = minhaStream.where(pares).map(mapear).listen(
        (onData) {
          print('Inscrito 2: $onData');
        },
        onError: (erro) {
          print('Inscrito 2: $erro');
        },
        cancelOnError: false,
        onDone: () {
          print('Inscrito 2 Completo!');
        },
      );

  // gerenciar inscritos
  for (var i = 0; i <= 3; i++) {
    Future.delayed(Duration(seconds: i), () {
      if (i == 1) inscrito1.pause();
      if (i == 2) inscrito1.resume();
      if (i == 3) inscrito1.cancel();
    });
  }
}

///
/// * Metodos
///

metodos() async {
  print('18.4.3) Stream Métodos e Ouvintes\n');

  var stream = Stream<dynamic>.periodic(Duration(seconds: 1), (e) => e + 1).take(5).asBroadcastStream();
  stream = stream.takeWhile((element) => element <= 5).skipWhile((element) => element > 3).take(3).map((event) => event.toString().padLeft(2, '0'));
  // ouvintes
  stream.listen(
    (onData) {
      print('listen: $onData');
    },
    onDone: () {
      print('Contagem finalizada!');
    },
  );

  stream.forEach((element) => print('ForEach: $element'));

  await for (dynamic evento in stream) {
    print('forIn: $evento');
  }

  var eventos = await stream.toList();
  print(eventos);

  Future<List<dynamic>> eventosFuturos = stream.toList();
  print(await eventosFuturos);
}

void main() {
  conceito();
  model();
  metodos();
}
