/// Como descrito no inicio, uma class imutável deve ter seus atributos "final" ou "static const"
/// e seu construtor deve ser "const".
class Brasil {
  // Como latitude e longitude, vão ser recebidos durante a execução, seu modificador deverá ser final
  final double latitude; // em tempo de execução
  final double longitude; // em tempo de execução
  // Como a capital do brasil sempre será a mesma, ela deve ser const e para q seja vista static
  // O mesmo ocorre para os estados, "static" para ser visto e "const" pois é constante
  static const String capital = 'Brasília'; // em tempo de compilação
  static const estados = ['GO', 'MT', 'MG', '...']; // em tempo de compilação

  /// e para que a classe se torne imutável, o construtor deve ser "const"
  const Brasil(this.latitude, this.longitude);
}