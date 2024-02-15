void main() {
  //siempre definir el tipo de datos que usara el Map
  final Map<String, dynamic> pokemon = {
    "name": "Aulio",
    "hp": 100,
    "isAlive": true,
    "abilities": <String>["impostor"],
    "sprites": {1: "ditto/front.png", 2: "ditto/back.png"}
  };

  print(pokemon);
  print("Name: ${pokemon["name"]}");
  print("Sprite: ${pokemon["sprites"]}");

  print("Back: ${pokemon["sprites"][2]}");
  print("Front: ${pokemon["sprites"][1]}");
}
