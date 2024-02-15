void main() {
  final Hero wolverine = Hero(name: "Logan", power: "Regeneration");

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;
//de esta forma realizamos la inicializacion del constructor
  Hero({required this.name, this.power = "Sin poder"});

  //Otra forma de inicializar el constructor
  // Hero(String pName, String pPower)
  //  : name = pName,
  //   power = pPower;

  @override
  String toString() {
    return "$name - $power";
  }
}
