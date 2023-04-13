/*
  *Const
    - Inicializada em tempo de compilação, deve ser declarada com valor constante
    - Ao nível de classes deve ser Statica para ficar disponível na classe
    - Em coleções(arrays) const todo o conteúdo deve ser constante
  * Objeto Imutável
    - O construtor deve ser constante
    - As variáveis devem ser final ou static const
*/
import 'Brasil.dart';

void main() {
  print('10.2) Modificadores Const\n');

  const pi = 3.14;
  double raio = 2;
  var resultado = pi * (raio * raio);
  print('Resultado: ${resultado}\n');

  final numeros = [raio, 2.5];
  numeros.add(resultado); // Coleção final, pode ser adicionada
  print(numeros);

  final listaFinal = const [0, 1];
  //!listaFinal.add(2); // Coleção constante não pode ser alterada nem adicionada
  print(listaFinal);

  const listaConst = [1, 2, pi];
  //!listaConst.add(pi); // Mesmo que o valor adicionado seja constante, a coleção não pode ser alterada
  print('${listaConst}\n');

  for (var i = 0; i < 3; i++) {
    final indiceFinal = i; // Esse muda enquanto é executado
    const constante = 1; // Esse muda antes mesmo de ser executado
    print('Contagem: ${constante + indiceFinal}');
    // A contagem segue normal, pois o constante não interfere no var i
  }

/*
  for (var i = 0; i < 3; i++) {
    final indiceFinal = i; // Esse muda enquanto é executado
    const constante = i; // Esse muda antes mesmo de ser executado
    print('Contagem: ${constante + indiceFinal}');
    /// Execução falha, pois, o valor de i apenas é atribuido, quando ocorre a
    /// execução do código e como const trabalha em tempo de compilação, seu valor
    /// deve ser definido antes da execução do código.
  }
*/

  var pais = Brasil(-15.792371, -47.882326);
  print('\nObjeto: $pais Capital: ${Brasil.capital} Latitude: ${pais.latitude} Longitude: ${pais.longitude}');
  print('Estados: ${Brasil.estados}');
  //Após declarada, essa classe se torna inalterável
  //* Tentativa de alteração
  //!pais.latitude = 0; // Gera erro
  //!Brasil.capital = ''; // Gera erro

  // Mas podemos criar uma nova instância dessa classe
  var pais1 = Brasil(-15, -47);
  print('\nObjeto: $pais1 Capital: ${Brasil.capital} Latitude: ${pais1.latitude} Longitude: ${pais1.longitude}');
}
