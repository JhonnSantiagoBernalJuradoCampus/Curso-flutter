import 'dart:math';

void main(){
  final String pokemon = 'Ditto';
  final int hp = 100;
  // Esta variable isAlive puede tener 3 valores: null, true, false}
  // bool? isAlive;
  final bool isAlive = true;
  final List<String> abilities = ['Fuego', 'Agua', 'Tierra'];
  final Map<String, bool> friends = {"Pikachu": false, "Buizel": true};

  friends.forEach((name, isFriend) {
    if (isFriend) {
      print(name);
    }
  });

  // dynamic == null
  dynamic errorMessage = 'Hola';
  // dynamic puede ser cualquier tipo de dato en cualquier momento, obvio si no es final
  errorMessage = true;
  errorMessage = [1,2,3,4,5];
  errorMessage = {1,2,3,4,5};
  errorMessage = () => true;
  errorMessage = null;

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $errorMessage
  """);


} 