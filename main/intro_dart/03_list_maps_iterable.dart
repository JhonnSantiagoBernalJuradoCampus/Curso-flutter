void main(){
  List<int> numbers = [1,2,3,4,5,5,6,6,7,8,9];
  
  print('List original:  $numbers');
  print('Length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');

  final Iterable reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');

  final Iterable<int> numbersGreaterThanFive = numbers.where( (number) {
    return number >5;
  });

  print('Numbers Iterable >5 $numbersGreaterThanFive');
  print('Numbers Set >5 ${numbersGreaterThanFive.toSet()}');
}