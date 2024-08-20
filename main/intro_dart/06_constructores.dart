void main(){

  final Map<String,dynamic> heroJson = {
    'name': 'Peter Parker',
    'power': 'Spider',
    'isAlive': true
  };


  final Hero spiderman = Hero.fromJson(heroJson);

  final Hero ironman = Hero(
    name: 'Tony Stark',
    power: 'Money',
    isAlive: false
  );


  print(ironman);
  print(spiderman);

}

class Hero {
  String name;
  String power;
  bool isAlive;


  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });



  Hero.fromJson(Map<String, dynamic> heroJson):
    name = heroJson['name'] ?? 'No name found',
    power = heroJson['power'] ?? 'No power found',
    isAlive = heroJson['isAlive'] ?? false;


  @override
  String toString() {
    return '$name, $power, ${ isAlive ? 'Yesss': 'Nope'}';
  }
}