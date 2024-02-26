import 'dart:io';
import 'package:meu_app_desafio/Pessoa.dart';
import 'package:meu_app_desafio/Pessoa.dart' as meu_app_desafio;

void main(List<String> arguments) {
  print("Seja bem vindo ao Sistema de Calculo de IMC");
  print("Informe seu nome por gentileza!!");
  String? nome = stdin.readLineSync(); // Lê o dado do usuário

  print("Informe o peso do $nome (em KG):");
  double? peso = double.tryParse(stdin.readLineSync() ?? '');

  print("Informe a altura do $nome (em metros):");
  double? altura = double.tryParse(stdin.readLineSync() ?? '');

  try {
    Pessoa pessoa = Pessoa();
    pessoa.setNome(nome!);
    pessoa.setPeso(peso!);
    pessoa.setAltura(altura!);

    double? imc = pessoa.calcularIMC();
    String? classificao = pessoa.classificarIMC(imc!);

    print("O IMC de ${pessoa.getNome()} é: $imc");
    print("Classificação: $classificao");
  } catch (e) {
    print("Erro: $e");
  }
  // Tratamento de Erro
}
