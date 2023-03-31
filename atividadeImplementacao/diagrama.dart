abstract class Figura {
  String _cor = "";

  set Cor(String cor) {}

  String get Cor => this._cor;
}

class Retangulo extends Figura {
  double _lado1 = 0;
  double _lado2 = 0;

  Retangulo(double lado01, double lado02, String Cor) {
    this._lado1 = lado01;
    this._lado2 = lado02;
    this._cor = Cor;
  }

  set Lado1(double lado01) {
    this._lado1 = lado01;
  }

  set Lado2(double lado02) {
    this._lado2 = lado02;
  }

  double get Lado1 => this._lado1;

  double get Lado2 => this._lado2;

  double area() {
    return this._lado1 * this._lado2;
  }

  String toString() =>
      '--> Retângulo ${this._cor}: \nBase = ${_lado1} \nAltura = ${_lado2} \nSua área é de ${area()}';
}

class Quadrado extends Retangulo {
  Quadrado(double lado01, String Cor) : super(lado01, lado01, Cor) {
    this._lado1 = lado01;
    this._cor = Cor;
  }

  String toString() => '\n--> Quadrado ${_cor}: \nLado = ${_lado1}';
}

class Circulo extends Figura {
  double _raio = 0;
  double pi = 3.14;

  Circulo(double Raio, String Cor) {
    this._raio = Raio;
    this._cor = Cor;
  }

  set Raio(double Raio) {
    this._raio = Raio;
  }

  double get Raio => this._raio;

  double area() {
    return this.pi * (this._raio * this._raio);
  }

  double getDiametro() {
    return 2 * this._raio;
  }

  String toString() =>
      '\n--> Circulo ${_cor}: \nRaio = ${_raio} \nSua a área é de ${area()} \nSeu diametro de ${getDiametro()}';
}

class Triangulo extends Figura {
  double _base = 0;
  double _altura = 0;

  Triangulo(double Base, double Altura, String Cor) {
    this._base = Base;
    this._altura = Altura;
    this._cor = Cor;
  }

  set Base(double Base) {
    this._base = Base;
  }

  set Altura(double Altura) {
    this._altura = Altura;
  }

  double get Base => this._base;

  double get Altura => this._altura;

  double area() {
    return (this._base * this._altura) / 2;
  }

  String toString() =>
      '\n--> Triângulo ${_cor}: \nAltura = ${_altura} \nBase = ${_base} \nSua área é de ${area()}';
}

void main() {
  final retangulo = Retangulo(10, 20, 'preto');
  final circulo = Circulo(6, 'Azul');
  final triangulo = Triangulo(5, 9, 'Vermelho');
  final quadrado = Quadrado(5, 'Roxo');

  print(retangulo.toString());
  print(circulo.toString());
  print(triangulo.toString());
  print(quadrado.toString());
}
