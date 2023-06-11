void main() {
  sum();
  sumFuture(12, 25);
  print('after sumFuture');
}

Future<int> sumFuture(int a, int b) async {
  await Future.delayed(Duration(seconds: 2));
  print('In Sum Future ${a + b}');
  return a + b;
}

Future<void> sum() async {
  await sumFuture(33, 44);

  print('In just sum');
}
