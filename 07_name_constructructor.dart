void main() {
  final Map<String, dynamic> rawJson = {
    "name": "Spiderman",
    "power": "force",
    "isAlive": false
  };

  final spiderMan = Hero.fromJson(rawJson);

  //final ironMan = Hero(
  //isAlive: false,
  //name: "Tonny Stark",
  //power: "Money"
  //);

  print(spiderMan);
}

//Definimos la clase:
class Hero {
  String name;
  String power;
  bool isAlive;

  //Constructor
  Hero({required this.name, required this.power, required this.isAlive});

  //creamos el constructor con los datos que recibimos y creamos validaciones para verificar que se este agregando bien el parametro
  Hero.fromJson(Map<String, dynamic> json)
      : name =
            json["name"] ?? "No name found", //siempre manejar el caso de error
        power = json["power"] ?? "No power found",
        isAlive = json["isAlive"] ?? "No isAlive found";

  @override
  String toString() {
    return "$name, $power, isAlive: ${isAlive ? "YES!" : "Nope"}";
  }
}
