void main(){
  String greet = greetEveryone();
  print(greet);
  int resultOfPlus = addTwoNumbers(10, 12);
  print('Suma $resultOfPlus');
  int resultOptional = addTwoNumbersOptional(10);
  print('Suma opcional: $resultOptional');
}

// String greetEveryone(){
//   return 'Hello everyone';
// }
String greetEveryone () => 'Hello everyone';

int addTwoNumbers (int a, int b) => a + b;

// int addTwoNumbersOptional (int a, [int? b]){
//   b ??= 0;
  
//   return a + b;
// }
int addTwoNumbersOptional (int a, [int b = 0]){
  return a + b;
}