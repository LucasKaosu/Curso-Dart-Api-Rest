import 'Cidadao.dart';
import 'Postagem.dart';
import 'Presidencial.dart';

class Candidato extends Cidadao implements Postagem, Presidenciavel {
  String? objetivo;

  Candidato(String? nome, {this.ideologia, this.partido}) : super(nome) {
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  // INTERFACES
  @override
  String? postagem;

  @override
  void escrevePostagem() {
    print('Postagem de $nome no facebook: $postagem');
  }

  @override
  String? ideologia;
  String? partido;

  @override
  void idelologiaPolitica() {
    print('$nome é candidato com ideologia de $ideologia pelo partido $partido');
  }
}
