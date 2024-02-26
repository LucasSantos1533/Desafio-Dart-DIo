class Pessoa {
  String? _nome;
  double? _peso;
  double? _altura;

  void setNome(String nome) {
    _nome = nome;
  }

  String? getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double? getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double? getAltura() {
    return _altura;
  }

  double? calcularIMC() {
    //função calculo IMC
    if (_peso != null && _altura != null && _altura! > 0) {
      return _peso! / (_altura! * _altura!);
    } else {
      throw Exception("Dados inválidos para calcular o IMC");
    }
  }

  String? classificarIMC(double imc) {
    if (imc < 16) {
      return "Magreza grave";
    } else if (imc >= 16 && imc <= 17) {
      return "Magreza moderada";
    } else if (imc >= 17 && imc <= 18.5) {
      return " MAgreza leve";
    } else if (imc >= 18.5 && imc <= 25) {
      return "Saudável";
    } else if (imc >= 25 && imc <= 30) {
      return "Sobrepeso";
    } else if (imc >= 30 && imc <= 35) {
      return "Obesidade Grau I";
    } else if (imc >= 35 && imc <= 40) {
      return "Obesidade Grau II(severa)";
    } else {
      return "Obesidade Grau III(Mórbida)";
    }
  }
}
