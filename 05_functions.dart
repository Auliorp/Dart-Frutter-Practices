void main() {
  print(greetEveryone());
  print(addTwoNumbers(10, 13));
  print(addTwoNumbersOptional(10));

  print(greetPerson(
    name: "Aulio",
  ));
}

String greetEveryone() => "Hello everyone!";

int addTwoNumbers(int a, int b) => a + b;
//como aplicar si el segundo parametro es opcional:
int addTwoNumbersOptional(int a, [int b = 0]) {
  //Diferentes formas de agregar el valor opcional
  // b = b ?? 0;
  // b ??= 0;

  return a + b;
}

//Cuando agregamos la palabra reservada "required" significa que es obligatorio este campo"
String greetPerson({required String name, String? message = "Hola,"}) {
  return "$message $name ";
}
