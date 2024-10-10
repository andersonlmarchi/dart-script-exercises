import 'package:exercicios/exercicios.dart';
import 'package:test/test.dart';

void main() {
  test('exercicio', () {
    expect(() => antecessor(), prints('Digite um número:\nO antecessor de 1 é 0\n'));
  });
}
