import 'dart:collection';

///
/// * Set é uma coleção de elementos únicos e ordenados entre chaves {}.
/// * Não tem acesso ao índice.
///

linkedHashSet() {
  print('16.2.0) LinkedHashSet == Set \n');
  Set<int> setInt = Set();
  print('Implementação: ${setInt.runtimeType}'); // _CompactLinkedHashSet<int>
  // setInt[0] = 0; // Não tem acesso ao índice
  setInt.add(13);
  setInt.add(13);
  //setInt.add(null); // Não pode conter nulo por ser tipo Int
  setInt.add(17);
  setInt.add(17);
  setInt.remove(13);
  print(setInt); // Representada por chaves
  for (var i = 0; i < setInt.length; i++) {
    //print(setInt[i]); // Não tem acesso ao índice mas pode usar elementAt
    print('for> ${setInt.elementAt(i)}');
  }
  for (var elemento in setInt) {
    print('for: ${elemento}');
  }
  setInt.forEach((element) => print('forEach: $element'));

  Set<int> listaA = {0, 1, 2, 3, 4};
  Set<int> listaB = {3, 4, 5, 6, 7};
  print(listaA.difference(listaB));
  print(listaA.union(listaB));
  print(listaA.intersection(listaB));
  print(listaA.lookup(listaB));
}

hashSet() {
  print('\n16.2.1) HashSet \n');
  HashSet<String> hashSet1 = HashSet();
  HashSet<int> hashSet2 = HashSet();
  HashSet<int> hashSet3 = HashSet();
  print('Implementação: ${hashSet1.runtimeType}'); // _HashSet<String>
  hashSet1.add('A');
  hashSet1.add('B');
  hashSet1.add('C');
  hashSet1.add('D');
  //hashSet1.add(null); // Não pode conter nulo por ser tipo String
  hashSet2.add(1);
  hashSet2.add(2);
  hashSet2.add(3);
  hashSet3.add(11);
  hashSet3.add(22);
  hashSet3.add(33);
  print('$hashSet1 \n$hashSet2 \n$hashSet3');
  for (var i = 0; i < hashSet1.length; i++) {
    //print(hashSet1[i]); // Não tem acesso ao índice mas pode usar elementAt
    print('for hashSet1: ${hashSet1.elementAt(i)}');
  }
  for (var elemento in hashSet2) {
    print('for in hashSet2: $elemento');
  }
  hashSet3.forEach((element) => print('forEach hashSet3; $element'));
}

splayTreeSet() {
  print('\n16.2.3) SplayTreeSet\n');
  SplayTreeSet<String> splayTreeSet = SplayTreeSet();
  print('Implementação: ${splayTreeSet.runtimeType}'); // SplayTreeSet<String>
  splayTreeSet.add('info1');
  splayTreeSet.add('info3');
  splayTreeSet.add('info');
  splayTreeSet.add('info2');
  // splayTreeSet.add(null); // Não pode conter null
  print(splayTreeSet);
  for (var i = 0; i < splayTreeSet.length; i++) {
    //print(splayTreeSet[i]); // Não tem acesso ao índice
    print('for: ${splayTreeSet.elementAt(i)}');
  }
  for (var element in splayTreeSet) {
    print('for in: $element');
  }
  splayTreeSet.forEach((element) => print('forEach: $element'));
}

main() {
  linkedHashSet();
  hashSet();
  splayTreeSet();
}
