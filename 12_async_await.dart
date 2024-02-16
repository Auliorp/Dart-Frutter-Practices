void main() async {
  print("Inicio del programa");

  try {
    final value = await httpGet("http://Aulio-Rovero.com/portafolio");
    print(value);
  } catch (err) {
    print("Tenemos un error: $err");
  }

  print("Fin del programa");
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw "Error en la peticon";

  // return "Respuesta de la peticion http";
}
