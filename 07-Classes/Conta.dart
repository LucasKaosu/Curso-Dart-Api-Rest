import 'dart:math';

class Conta {
  String nome = 'Lucas';
  int numeroConta = new Random().nextInt(10000);
  double saldo = 0;

  double consultarSaldo() => this.saldo;

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0;

  void calcularSalario(double salario, double bonus, int faltas) {
    var salarioCalculado = this.saldo = (salario * desconto(faltas)) + bonus;
  }

  void depositar(double valorDeposito) {
    // Forma de fazer incremento
    //this.saldo += valorDeposito;
    this.saldo = this.saldo + valorDeposito;
    print('Depósito: $valorDeposito Saldo: $saldo');
  }

  void sacar(double valorSaque) {
    this.saldo = this.saldo - valorSaque;
    print('Saque: $valorSaque Saldo: $saldo');
  }
}
