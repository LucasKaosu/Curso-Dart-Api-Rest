import 'Mamiferos.dart';

class Cao extends Mamiferos {
  String? nome;
  String? raca;

  Cao.domestico(this.nome, this.raca, String sexo, {String idade = 'indefinida', bool docil = true}) : super.placentarios(sexo, idade, docil: docil) {}

  Cao.selvagem(this.nome, this.raca, sexo, {idade = 'indefinida', docil = false}) : super.placentarios(sexo, idade, docil: docil) {
    // exemplo que o dart aceita parametros sem tipagem
  }

  @override
  void dormir() {
    print('Dorme como um cao!');
  }

  // @override // é opicional, pois o dart identifica os métodos com o mesmo nome
  void alimentar() {
    super.alimentar();
    print('cão!');
  }

  @override // Métodos sem escopo em classes abstratas devem ser sobrescritos
  void reproduzir() {
    print('Reproduz com oum cão!');
  }

  void acao() {
    print('Late como um cão!');
  }

  // Toda classe extends de Object, ao usar a funcao print a funcao toString retorna (Instance od 'Object')

  String toString() {
    return "Instance of '${this.runtimeType}' Nome: $nome Raça: $raca Sexo: $sexo";
  }
}