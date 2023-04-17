import 'Animal.dart';

abstract class Mamiferos extends Animal {
  String? sexo;
  String? desenvolvimento;

  Mamiferos.placentarios(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Placentários';
  }
  Mamiferos.marsupiais(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Placentários + Bolsa Externa';
  }
  Mamiferos.monotremados(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  void alimentar() {
    print('Se alimenta');
    print('como um');
  }

  // Métodos sem escopos na classe pai, devem ser sobrescritos nas classes herdeiras
  void reproduzir();
}