void main(){
  final WindPlant windPlant = WindPlant(initialEnergy: 100);
  windPlant.consumeEnergy(amount: 10);
  print(windPlant.energyLeft);
  print('Wind: ${chargePhone(windPlant)}');
}


enum PlantType {
  nuclear,
  wind,
  water
}

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });

  void consumeEnergy({required double amount});
  
}


//Extends o implements
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
    : super( energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy({required double amount}) {
    this.energyLeft -= amount;
  }
}


double chargePhone( EnergyPlant plant) {
  if (plant.energyLeft < 10){
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}