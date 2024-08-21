void main(){
  final Square mySquare = Square(side:  10);
  


  print('Area: ${ mySquare.area }');
  mySquare.side = 4;

}

class Square {

  double _side; //side * side

  Square({required double side})
    : _side = side;

  double get area => _side * _side;

  set side( double side){
    print('Setting new value $side');
    if (side < 0) throw 'Value must be >=0';

    _side = side;
  }

}