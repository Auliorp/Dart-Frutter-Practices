void main() {
  final mySquare = Square(side: 10);

  mySquare.side = -5;

  print("area: ${mySquare.area}");
}

// creando una clase para calcular el area de un cuadrado
class Square {
  double _side; // side * side

  //Constructor
  Square({required double side}) : _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print("setting new value $value");
    if (value < 0) throw "Value Must be >=0";

    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
