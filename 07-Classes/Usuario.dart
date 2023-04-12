class Usuario {
  String? usuario;
  String? senha;

  void autenticar() {
    var usuario = 'Lucas';
    var senha = '123456';

    if (this.usuario == usuario && this.senha == senha) {
      print('Usuário autênticado.\n');
    } else {
      print('Usuário não autênticado.\n');
    }
  }
}
