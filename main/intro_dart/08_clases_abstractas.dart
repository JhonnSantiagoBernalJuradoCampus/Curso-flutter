void main(){
  final WindPlant windPlant = WindPlant(initialEnergy: 100);
  final NuclearPlant nuclearPlant = NuclearPlant(energyLeft: 10);
  windPlant.consumeEnergy(amount: 10);
  print(windPlant.energyLeft);
  print('Wind: ${chargePhone(windPlant)}');
  print('Nuclear: ${chargePhone(nuclearPlant)}');
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
//Cuando extendemos heredamos
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

//implements
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  PlantType type = PlantType.nuclear;
  
  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy({required double amount}) {
    energyLeft -= (amount * 0.5);
  }
  
  
}