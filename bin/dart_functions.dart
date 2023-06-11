void main() {
  sum();
  sumparams(2, 5);
  var sum1 = sumReturn(10, 25);
  print(sum1);
  sumReq(firstnum: 10, secondnum: 20, thirdnum: 30);
  sumFunction(
    23,
    25,
    (a, b) {
      print('Function as parameter: ${a + b}');
    },
  );
  sumFuture(1, 3);
  print('after sumFuture');
}

void sum() {
  //function without parameters and return
  /// `print(2 + 3);` is a statement that adds the values of 2 and 3 and prints the result (5) to the
  /// console.
  print(2 + 3);
}

void sumparams(int a, int b) {
  //default parameters
  //function with parameters and without return
  print('$a + $b = ${a + b}');
}

int sumReturn(int a, int b) {
  //function with parameters and return
  return a + b;
}

Future<void> sumFuture(int a, int b) async {
  //async is for asynchronous function,here it will not wait for the execution of the function and not time based
  //function with parameters and return
  await Future.delayed(Duration(
      seconds:
          5)); //it will wait for 5 seconds,await is for waiting//time based
  print('Future function ${a + b}');
}

void sumReq({required int firstnum, required int secondnum, int thirdnum = 0}) {
  //function with required parameters,
  //it is not necessary to pass the parameters in order and
  //should be passed with the parameter name
//?means optional parameter,it may null or not
  print(firstnum + secondnum);
}

void sumFunction(int a, int b, void Function(int, int) customsum) {
  //function as parameter
  customsum(a, b);
}
