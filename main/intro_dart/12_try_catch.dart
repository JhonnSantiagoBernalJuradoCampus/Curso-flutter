void main() async {
  print('Inicio del programa');

  try {
    final String result = await httpGet('https://santiagoBernal.com/pro');
    print('exito: $result');

  } on Exception catch(error){
    print('Tenemos una exception: $error');
  } catch (error) {
    print('F, tenemos un error: $error');
  } finally {
    print('Fin del try catch');
  }
  

  print('Fin del programa');
}


Future<String> httpGet(String url) async {

  await Future.delayed( Duration(seconds: 1));

  throw Exception('No hay parametros en la URL');

 //throw 'Error en la peticion';

  //return 'Tenemos un valor de la peticion';
}