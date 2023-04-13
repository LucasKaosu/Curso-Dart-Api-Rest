class Usuario {
  bool alteracao = false;
  String nome;
  String? _senha;

  Usuario(this.nome, String senha) {
    this._senha = senha;
  }

  // Getter padrão
  String? get senha {
    return _senha;
  }

  // Setter padrão
  set senha(String? senha) {
    if (alteracao) {
      _senha = senha;
      print('Sucesso, Senha Alterada!');
    } else {
      print('Erro: Acesso Negado!');
    }
  }
}
