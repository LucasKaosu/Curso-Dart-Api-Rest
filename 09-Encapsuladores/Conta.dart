import 'dart:math';

class Conta {
  bool alterarLimite = false;

  int? _numeroConta;
  String? _nome;
  double _saldo = 0;
  double _limite = 500;

  Conta(String nome) {
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print('Conta Nº: "${_numeroConta}" Titular: "${_nome}" Criada com sucesso!');
  }

  Conta.vip(String nome, {double limite = 10000}) {
    this.alterarLimite = true;
    this._limite = limite;
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print('Conta Nº: "${_numeroConta}" Titular: "${_nome}" Criada com sucesso!');
  }

  // Getter Padrão
  int? get numeroConta {
    return this._numeroConta;
  }

  /*double*/ get saldo => this._saldo;

  // Setter Padrão
  set limite(double limite) {
    if (alterarLimite) {
      this._limite = limite;
      print('Limite alterado para o valor: $_limite');
    } else {
      print('Permissão negada! Alteração de Limite do Titular.');
    }
  }

  // Getter e Setter Customizaveis
  String get informacao => 'Titular: ${_nome} Nº Conta: ${_numeroConta} Saldo: ${_saldo}';

  set deposito(double deposito) {
    if (deposito > 0) {
      this._saldo += deposito;
      print('Deposito valor: $deposito Saldo atualizado $_saldo');
    }
  }

  set saque(double saque) {
    if (saque > 0 && saque <= _limite) {
      if (saque <= _saldo) {
        this._saldo -= saque;
        print('Saque valor: $saque Saldo Atualizado: $_saldo');
      } else {
        print('Saldo valor: $_saldo insuficiente para saque de $saque');
      }
    } else {
      print('Limite para saque; $_limite');
    }
  }
}
