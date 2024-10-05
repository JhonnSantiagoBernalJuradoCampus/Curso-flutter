void main() {
  print('Inicio del programa');

  httpGet('https://santiagoBernal.com/pro')
    .then((value) {
      print(value);
    })
    .catchError((error){
      print('Error: $error');
  });

  print('Fin del programa');
}

Future<String> httpGet(String url){

  return Future.delayed( Duration(seconds: 1), (){
    
    throw 'Error 500';

    //return 'Respuesta de la peticion Http';
  });
}