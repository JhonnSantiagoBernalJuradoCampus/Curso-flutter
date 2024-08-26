abstract class Animal{

}

abstract class Mamifero extends Animal {

}

abstract class Ave extends Animal {
  

}

abstract class Pez extends Animal {
  
}

mixin class Volador {
  void volar() => print('Estoy volando');
}

mixin class Caminador {
  void caminar() => print('Estoy caminando');
}

mixin class Acuatico {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Acuatico {

}
class Murcielago extends Mamifero with Caminador, Volador {

}
class Gato extends Mamifero with Caminador {

}

class Paloma extends Ave with Caminador, Volador  {

}
class Pato extends Ave with Caminador, Volador, Acuatico {

}

class Tiburon extends Pez with Acuatico {

}
class PezVolador extends Pez with Acuatico, Volador {

}

void main(){

  final Delfin flipper = Delfin();
  flipper.nadar();

  
  final Paloma palomita = Paloma();
  palomita.caminar();
  palomita.volar();
}