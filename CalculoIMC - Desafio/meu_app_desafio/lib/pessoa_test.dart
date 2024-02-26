import 'package:test/test.dart';
import 'Pessoa.dart';

void main() {
  group('Pessoa', () {
    test('Calcular IMC', () {
      Pessoa pessoa = Pessoa();
      pessoa.setPeso(70.0);
      pessoa.setAltura(1.75);

      expect(pessoa.calcularIMC(),
          equals(22.86)); // Substitua o valor esperado pelo resultado correto
    });

    test('Classificar IMC', () {
      Pessoa pessoa = Pessoa();

      expect(
          pessoa.classificarIMC(18.0),
          equals(
              ' Magreza leve')); // Substitua o valor esperado pela classificação correta
    });
  });
}
