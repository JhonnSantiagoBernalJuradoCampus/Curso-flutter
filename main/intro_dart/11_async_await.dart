void main() async {
  print('Inicio del programa');

  try {
    final String result = await httpGet('https://santiagoBernal.com/pro');
    print(result);

  } catch (error) {
    print('F, tenemos un error: $error');
  }
  

  print('Fin del programa');
}


Future<String> httpGet(String url) async {

  await Future.delayed( Duration(seconds: 1));

  throw 'Error en la peticion';

  //return 'Tenemos un valor de la peticion';
}