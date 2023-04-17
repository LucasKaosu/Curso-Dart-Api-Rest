import 'Animal.dart';

abstract class Artropodes extends Animal {
  String? sexo;
  String? desenvolvimento;

  Artropodes.insetos(this.sexo, idade, {docil}) : super.invertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo e Larva';
  }
  Artropodes.aracnideos(this.sexo, idade, {docil}) : super.invertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }
  Artropodes.crustaceos(this.sexo, idade, {docil}) : super.invertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo e Larva';
  }

  void alimentar() {
    print('Se alimenta');
    print('como um');
  }

  void reproduzir();
}
