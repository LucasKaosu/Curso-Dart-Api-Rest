import 'dart:collection';

///
/// * Queue é uma coleção ordenada entre chaves{}, sem index, que manipula o início e o fim da lista!
///

queue() {
  print('16.3.1) Queue\n');

  Queue<int> queue = Queue();
  print('implementação: ${queue.runtimeType}'); // ListQueue<int>
  queue.addAll([20, 30]);
  queue.add(40);
  queue.addFirst(10);
  queue.addLast(50);
  queue.add(60);
  //queue.add(null); // Não aceita null por ser do tipo int
  print(queue);
  queue.removeLast();
  queue.forEach((element) => print(element));
}

void main() {
  queue();
}
