void main(){
  emitNumber().listen((int number) {
    print('Stream value: $number');
  });

      
}

Stream<int> emitNumber() async* {
  final List<int> valuesToEmit = [1,2,3,4,5];

  for (final number in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield number;
  }
}