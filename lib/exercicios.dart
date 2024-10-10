import 'dart:io';

void antecessor() {
  print('Digite um número:');
  int? numero = int.parse(stdin.readLineSync()!);
  int antecessor = numero - 1;
  print('O antecessor de $numero é $antecessor');
}

void calcularPercentuaisLeitores() {
  print('Digite o número total de eleitores:');
  int totalEleitores = int.parse(stdin.readLineSync()!);

  print('Digite o número de votos brancos:');
  int votosBrancos = int.parse(stdin.readLineSync()!);

  print('Digite o número de votos nulos:');
  int votosNulos = int.parse(stdin.readLineSync()!);

  print('Digite o número de votos válidos:');
  int votosValidos = int.parse(stdin.readLineSync()!);

  double percentualBrancos = (votosBrancos / totalEleitores) * 100;
  double percentualNulos = (votosNulos / totalEleitores) * 100;
  double percentualValidos = (votosValidos / totalEleitores) * 100;

  print('Percentual de votos brancos: ${percentualBrancos.toStringAsFixed(2)}%');
  print('Percentual de votos nulos: ${percentualNulos.toStringAsFixed(2)}%');
  print('Percentual de votos válidos: ${percentualValidos.toStringAsFixed(2)}%');
}

void reajusteSalarial() {
  print('Digite o salário mensal atual:');
  double salarioAtual = double.parse(stdin.readLineSync()!);

  print('Digite o percentual de reajuste:');
  double percentualReajuste = double.parse(stdin.readLineSync()!);

  double novoSalario = salarioAtual + (salarioAtual * percentualReajuste / 100);

  print('O novo salário é: R\$${novoSalario.toStringAsFixed(2)}');
}

void calcularMediaPonderada() {
  print('Digite a primeira nota:');
  double nota1 = double.parse(stdin.readLineSync()!);

  print('Digite a segunda nota:');
  double nota2 = double.parse(stdin.readLineSync()!);

  print('Digite a terceira nota:');
  double nota3 = double.parse(stdin.readLineSync()!);

  double mediaFinal = (nota1 * 2 + nota2 * 3 + nota3 * 5) / 10;

  print('A média final é: ${mediaFinal.toStringAsFixed(2)}');
}

void calcularMediaPonderadaComPesos() {
  print('Digite o nome do aluno:');
  String nome = stdin.readLineSync()!;

  List<double> notas = [];
  List<double> pesos = [];

  for (int i = 1; i <= 4; i++) {
    print('Digite a nota $i:');
    double nota = double.parse(stdin.readLineSync()!);
    notas.add(nota);

    print('Digite o peso da nota $i:');
    double peso = double.parse(stdin.readLineSync()!);
    pesos.add(peso);
  }

  double somaPesos = pesos.reduce((a, b) => a + b);
  double mediaPonderada = 0;

  for (int i = 0; i < 4; i++) {
    mediaPonderada += notas[i] * pesos[i];
  }

  mediaPonderada /= somaPesos;

  print('A média final do aluno $nome é: ${mediaPonderada.toStringAsFixed(2)}');
}

void converterFahrenheitParaCelsius() {
  print('Digite a temperatura em graus Fahrenheit:');
  double fahrenheit = double.parse(stdin.readLineSync()!);

  double celsius = (5 * (fahrenheit - 32) / 9);

  print('A temperatura em graus Celsius é: ${celsius.toStringAsFixed(2)}');
}

void calcularOperacoesNumericas() {
  print('Digite o primeiro número inteiro:');
  int numero1 = int.parse(stdin.readLineSync()!);

  print('Digite o segundo número inteiro:');
  int numero2 = int.parse(stdin.readLineSync()!);

  print('Digite um número real:');
  double numero3 = double.parse(stdin.readLineSync()!);

  double produtoDobroPrimeiroMetadeSegundo = (2 * numero1) * (numero2 / 2);
  double somaTriploPrimeiroComTerceiro = (3 * numero1) + numero3;

  print('Produto do dobro do primeiro com metade do segundo: $produtoDobroPrimeiroMetadeSegundo');
  print('Soma do triplo do primeiro com o terceiro: $somaTriploPrimeiroComTerceiro');
}

void calcularPesoIdeal() {
  print('Digite a altura (em metros):');
  double altura = double.parse(stdin.readLineSync()!);

  print('Digite o sexo (M para masculino, F para feminino):');
  String sexo = stdin.readLineSync()!.toUpperCase();

  double pesoIdeal;

  if (sexo == 'M') {
    pesoIdeal = (72.7 * altura) - 58;
  } else if (sexo == 'F') {
    pesoIdeal = (62.1 * altura) - 44.7;
  } else {
    print('Sexo inválido.');
    return;
  }

  print('O peso ideal é: ${pesoIdeal.toStringAsFixed(2)} kg');
}


void calcularSalarioTotal() {
  print('Digite quanto você ganha por hora:');
  double valorHora = double.parse(stdin.readLineSync()!);

  print('Digite o número de horas trabalhadas no mês:');
  double horasTrabalhadas = double.parse(stdin.readLineSync()!);

  double salarioBruto = valorHora * horasTrabalhadas;
  double descontoIR = salarioBruto * 0.11;
  double descontoINSS = salarioBruto * 0.08;
  double descontoSindicato = salarioBruto * 0.05;
  double totalDescontos = descontoIR + descontoINSS + descontoSindicato;
  double salarioLiquido = salarioBruto - totalDescontos;

  print('+ Salário Bruto : R\$${salarioBruto.toStringAsFixed(2)}');
  print('- IR (11%) : R\$${descontoIR.toStringAsFixed(2)}');
  print('- INSS (8%) : R\$${descontoINSS.toStringAsFixed(2)}');
  print('- Sindicato (5%) : R\$${descontoSindicato.toStringAsFixed(2)}');
  print('= Salário Líquido : R\$${salarioLiquido.toStringAsFixed(2)}');
}













