import 'Animal.dart';
import 'Objeto.dart';
import 'Pessoa.dart';
import 'Usuário.dart';

///
///Os construtores devem ter o mesmo nome da classe
///Eles são iniciados quando instanciamos as classe, podendo fazer configurações inicias
///

void main() {
  print('08.0) Construtores\n');

  Objeto objeto = new Objeto();
  objeto.nome = 'Mesa';
  print('Nome: ${objeto.nome}\n');

  Animal animal = new Animal('Poppy');
  print('Nome: ${animal.nome} Raça: ${animal.raca} Idade: ${animal.idade}\n');

  Pessoa pessoa = new Pessoa('Lucas', 23, altura: 1.78);
  print('Nome: ${pessoa.nome} Idade: ${pessoa.idade} Cor: ${pessoa.cor} Altura: ${pessoa.altura}\n');

  //Dados inseridos pelo usuário
  Usuario usuario = new Usuario('lucas', 'abc123', nome: 'Lucas');
  print('Usuário: ${usuario.user} Senha: ${usuario.senha} Nome: ${usuario.nome} Cargo: ${usuario.cargo}\n');
  usuario.autenticar();

  //Dados inseridos pelo administrador
  Usuario admin = new Usuario.admin('lucas', 'abc123');
  print('Admin: ${admin.user} Senha: ${admin.senha} Nome: ${admin.nome} Cargo: ${admin.cargo}\n');
  usuario.autenticar();
}
