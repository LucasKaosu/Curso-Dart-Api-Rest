import 'Conta.dart';
import 'Pessoa.dart';
import 'Usuario.dart';

///
///Classes == Objetos
///Variáveis == Atributos
///Funções == Métodos
///

void main() {
  print('07.0) Classes/Objetos\n');

  Pessoa pessoa1 = new Pessoa();
  pessoa1.nome = 'Lucas';
  pessoa1.idade = 23;
  print('Nome: ${pessoa1.nome} idade: ${pessoa1.idade}');

  // No DART não existe a necessidade de digitar new na declaração de um novo objeto
  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'Bruna';
  pessoa2.idade = 22;
  print('Nome: ${pessoa2.nome} idade: ${pessoa2.idade}');

  // Dados inseridos pelo usuário
  Usuario usuario = new Usuario();
  usuario.usuario = 'Lucas';
  usuario.senha = '123456';
  usuario.autenticar();

  Conta conta = new Conta();
  print('Nome: ${conta.nome} NºConta: ${conta.numeroConta} Saldo: ${conta.saldo}');
  conta.calcularSalario(950, 150, 2);
  conta.depositar(150);
  conta.sacar(50);
}
