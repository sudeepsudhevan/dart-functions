/// The code defines two functions, one of which is a future that adds two numbers after a delay, and
/// the other function calls the future and prints a message.
// void main() {
//   sum();
//   sumFuture(12, 25);
//   print('after sumFuture');
// }

Future<void> main() async {
  await sum();

  print('after Future');
}

Future<int> sumFuture(int a, int b) async {
  await Future.delayed(Duration(seconds: 12));
  print('In Sum Future ${a + b}');
  return a + b;
}

/// `Future` is a class in Dart that represents a value that may not be available yet but will be
/// available at some point in the future. It allows asynchronous programming by providing a way to
/// execute code asynchronously and handle the result when it becomes available. In this code, `Future`
/// is used to delay the execution of the `sumFuture` function by 2 seconds and to return the result of
/// the addition of two numbers as a future. The `await` keyword is used to wait for the future to
/// complete before continuing with the execution of the code.
Future<void> sum() async {
  await sumFuture(33, 44);

  print('In just sum');
}
