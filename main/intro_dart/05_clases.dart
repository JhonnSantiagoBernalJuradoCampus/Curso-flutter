void main(){
  final Hero wolverine = new Hero(name: 'Batman',power: 'Garras');
  String name = wolverine.getName();
  print(wolverine);
  print(name);


}

class Hero {

  String name;
  String power;

  Hero({
    required this.name,
    required this.power
  });

  // Hero(String name, String power)
  //   : name = name,
  //     power = power;

  String getName(){
    return this.name;
  }
  void setName(String name){
    this.name = name;
  }
  String getPower(){
    return this.power;
  }
  void setPower(String power){
    this.power = power;
  }

  @override
  String toString() {
    return '$name - $power';
  }
}