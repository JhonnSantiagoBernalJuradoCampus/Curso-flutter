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

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  """);


}