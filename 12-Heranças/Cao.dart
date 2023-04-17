import 'Mamiferos.dart';

class Cao extends Mamiferos {
  String nome;
  String raca;

  Cao(this.nome, this.raca, String? sexo, {String? idade, bool docil = false}) : super(sexo, idade, docil) {
    this.idade = (idade == null) ? 'Indefinido' : idade;
    this.sexo = (sexo == null) ? 'Indefinido' : sexo;
  }

  void acao() {
    print('Late como um cão!');
  }
}
