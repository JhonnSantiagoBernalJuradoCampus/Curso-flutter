void main(){
  final Hero wolverine = new Hero('Batman', 'Garras');
  String name = wolverine.getName();
  print(name);


}

class Hero {

  String name;
  String power;

  Hero(this.name, this.power);

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
}