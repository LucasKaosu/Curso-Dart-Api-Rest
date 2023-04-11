void main() {
  print('04.0) Arrays');

  ///Array é uma lista dinâmica e ordenada de elementos entre chaves
  ///Vale lembrar: todo Array é ordenado por índice que começa a ser contado por
  ///0 e representa a casa ou slot onde sua variável esta guardada
  var texto = ['Lucas', 'Bruna']; // índice 0 e 1
  var numeros = [1, 1.25, 5, 31, 36]; // Índice 0 a 4
  var condicoes = [!false, true, false, null]; // índice 0 a 3
  print('${texto[0]} e ${texto[1]}');
  print('${texto[0]} tem ${numeros[4]} anos');
  print('${texto[1]} ${numeros[3] > 17 ? 'é maior' : 'não é maior'} de idade');
  print('condicoes[3] == null: ${condicoes[3] ?? 'true'}'); // Dupla interrogação questiona se o valor é nulo e executa o comando a direita

  bool verdadeiro = !false;
  var arrayDinamico = ['texto', [], 3, 1.5, verdadeiro];
  print(arrayDinamico);
  arrayDinamico[0] = texto[0];
  arrayDinamico[1] = ['Silva', 'de', 'Oliveira'];
  arrayDinamico[2] = numeros[2];
  arrayDinamico[3] = numeros[1];
  arrayDinamico[4] = !verdadeiro;
  print(arrayDinamico);

  print('\n04.1) Arrays Funções\n');

  arrayDinamico.add(numeros[1]); // Comando para adicionar ao final do array
  print(arrayDinamico);
  arrayDinamico.insert(0, 15); // Comando que insere um valor no index que vc quiser
  print(arrayDinamico);
  arrayDinamico.removeAt(0); // Comando que remove o valor do index informado
  print(arrayDinamico);
  arrayDinamico.removeRange(1, 3); // Comando que remove os valores do index inicial ate o final
  print(arrayDinamico);
  arrayDinamico.remove('Lucas'); // Comando busca e elimina valor do array
  print(arrayDinamico);
  print(arrayDinamico.length); // Comando retorna tamanho do array

  numeros = [10, 5, 1, 2.25, 7.5];
  numeros.sort(); // Ordena os valores dentro do array de forma crescente
  print(numeros);
  texto = ['Lucas', 'Bruna', 'Nayara', 'Pedro'];
  texto.sort((b, a) => a.compareTo(b)); // Lista organizada em forma decrescente
}
