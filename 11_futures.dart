void main() {
  print("Inicio del programa");

  httpGet("http://Aulio-Rovero.com/portafolio").then((value) {
    print(value);
  }).catchError((err) {
    print("Error: $err");
  });

  print("Fin del programa");
}

Future<String> httpGet(String url) {
  return Future.delayed(
      const Duration(seconds: 1), () => throw "Respuesta de la peticion http");
}
