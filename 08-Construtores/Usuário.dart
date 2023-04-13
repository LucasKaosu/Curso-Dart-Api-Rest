class Usuario {
  String? user, senha, nome, cargo;
  int? idade;

  Usuario(this.user, this.senha, {this.nome, String? cargo}) {
    this.nome = (nome == null) ? 'Sem Nome' : nome;
    this.cargo = (cargo == null) ? 'Usuário' : cargo;
    print('Construtor resumido com parâmetros nomeados default! ${this.toString()}\n');
  }

  Usuario.admin(this.user, this.senha, {this.nome, String? cargo}) {
    this.nome = (nome == null) ? 'Sem Nome' : nome;
    this.cargo = 'Administrador';
    print('Construtor resumido com parâmetros nomeados default! ${this.toString()}\n');
  }

  void autenticar() {
    // Dados recuperados do bd
    var user = 'lucas';
    var senha = 'abc123';
    (this.user == user && this.senha == senha) ? print('Usuário Autênticado!') : print('Usuário não Autênticado!');
  }
}