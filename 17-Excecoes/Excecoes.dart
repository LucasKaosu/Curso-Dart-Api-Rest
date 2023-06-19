/**
  * * TRATAMENTO DE EXCEÇÃO!
  * - try: Usado para testar uma lógica.
  * - catch: Captura erros na lógica try.
  * - on: Captura especificos/conhecidos na lógica try.
  * - throw Exception: Execução criada pelo usuário e tratada no catch.
  * - finally: Executado ao final try/catch, com exceção ou não: Utilizado para liberar recursos na lógica try.
*/

///
/// Caso 1: Quando você desconhece a exceção, use a clausula TRY CATCH
///

caso1() {
  print('17.0.1) Try Catch\n');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } catch (e) {
    print('Exceção: $e');
  }
}

///
/// Caso 2: Quando voce conhece a exceção, use a clausula ON
///

caso2() {
  print('17.0.2) ON\n');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
    // ignore: deprecated_member_use
  } on IntegerDivisionByZeroException {
    print('Exceção: não é possivel dividir por zero:');
  } catch (e) {
    print('Exceção: $e');
  }
}

///
/// Caso 3: Para descobrir eventos ocorridos antes da execução, use Stack Trace!
///

caso3() {
  print('17.0.3) Stack Trace\n');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } catch (e, s) {
    print('Exceção: $e');
    print('Stack Trace: $s');
  }
}

///
/// Caso 4: Use finally para tratamentos apos a execução do Try Catch!
///

caso4() {
  print('17.0.4) Finally\n');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } catch (e, s) {
    print('Exceção: $e');
  } finally {
    print('Finally: Com ou sem exceção "finally" será executado!');
  }
}

caso5() {
  print('17.0.5) Throw Exeception\n');
  try {
    int valorA = 1, valorB = 0;
    double resultado = valorA / valorB;

    if (resultado.isInfinite) throw Exception('A variável valorB deve ser != 0');

    print('Resultado: $resultado');
  } catch (e, s) {
    print('Exceção: $e');
  }
}

main() {
  print('17.0.0) Tratamento de Exceção\n');

  caso1();
  caso2();
  caso3();
  caso4();
  caso5();
}
