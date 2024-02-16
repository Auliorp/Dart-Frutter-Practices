void main() async {
  print("Inicio del programa");

  try {
    final value = await httpGet("http://Aulio-Rovero.com/portafolio");
    print("Exito: $value");
  } on Exception catch (err) {
    print("Tenemos una Exception: $err");
  } catch (err) {
    print("Ops! Algo terrible paso: $err");
  } finally {
    print("Fin del try and catch");
  }

  print("Fin del programa");
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception("No hay parametros en el URL");
  // throw "Error en la peticon";

  // return "Respuesta de la peticion http";
}
