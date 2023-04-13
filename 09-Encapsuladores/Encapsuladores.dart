import 'Conta.dart';
import 'Usuario.dart';

///
///Encapsuladores são usados para proteger os atributos e variáveis
///Get é usado para acessar
///Set é usado para alterar
///Atributos ou variáveis com undeline são privados Ex.: _saldo
///

void main() {
  print('09.0) Encapsuladores \n');

  var usuario = Usuario('Lucas', 'abc123');

  /// Como saber se estou usando set ou get?
  /// É bem simples o próprio DART faz essa escolha
  /// Caso você utilize o operador " = " significa que você está usando um get
  /// pois está atribuindo um valor, o set faz alteração na variável e uma
  /// atribuição é uma alteração
  /// Caso você utilize a variável sem fazer nenhuma atribuição ou alteração
  /// você está automáticamente usando um get, pois está apenas invocando a variável
  /// e é exatamente isso que o get faz ele acessa a variável
  usuario.senha = '123456'; // Set
  print('Senha: ${usuario.senha}\n'); // Get
  usuario
    ..senha = '123456'
    ..alteracao = true
    ..senha = '123456';
  print('Nome: ${usuario.nome}\nSenha: ${usuario.senha}\n');

  var conta = Conta('Bruna Maia');
  conta
    ..deposito = 900
    ..deposito = 450
    ..saque = 550
    ..saque = 500;

  print('');

  conta
    ..limite = 700
    ..alterarLimite = true
    ..limite = 1000
    ..alterarLimite = false;

  print('');

  conta
    ..saque = 950
    ..saque = 850;
  print('${conta.informacao}\n');

  var contaVip = Conta.vip('Lucas Silva', limite: 12500);
  contaVip
    ..deposito = 15000
    ..saque = 15000
    ..limite = 15000
    ..saque = 15000;
  print(contaVip.informacao);
}

class teste {
  String? _nome;

  String? get nome => _nome;

  set nome(String? value) {
    _nome = value;
  }
}
