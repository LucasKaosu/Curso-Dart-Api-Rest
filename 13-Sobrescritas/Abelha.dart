import 'Artropodes.dart';

class Abelha extends Artropodes {
  String? nome;
  String? raca;

  Abelha.domestico(this.nome, this.raca, String sexo, {String idade = 'indefinida', bool docil = true}) : super.insetos(sexo, idade, docil: docil) {}

  Abelha.selvagem(this.nome, this.raca, sexo, {idade = 'indefinida', docil = false}) : super.insetos(sexo, idade, docil: docil) {
    // exemplo que o dart aceita parametros sem tipagem
  }

  @override
  void dormir() {
    print('Dorme como um Abelha!');
  }

  // @override // é opicional, pois o dart identifica os métodos com o mesmo nome
  void alimentar() {
    super.alimentar();
    print('Abelha!');
  }

  @override // Métodos sem escopo em classes abstratas devem ser sobrescritos
  void reproduzir() {
    print('Reproduz como um Abelha!');
  }

  void acao() {
    print('Voa como um Abelha!');
  }

  // Toda classe extends de Object, ao usar a funcao print a funcao toString retorna (Instance od 'Object')

  String toString() {
    return "Instance of '${this.runtimeType}' Nome: $nome Raça: $raca Sexo: $sexo";
  }
}
