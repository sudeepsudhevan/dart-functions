void main() {
  sum();
  sumparams(2, 5);
  var sum1 = sumReturn(10, 25);
  print(sum1);
  sumReq(firstnum: 10, secondnum: 20, thirdnum: 30);
}

void sum() {
  //function without parameters and return
  print(2 + 3);
}

void sumparams(int a, int b) {
  //function with parameters and without return
  print('$a + $b = ${a + b}');
}

int sumReturn(int a, int b) {
  //function with parameters and return
  return a + b;
}

void sumReq({required int firstnum, required int secondnum, int? thirdnum}) {
  //function with required parameters,
  //it is not necessary to pass the parameters in order and
  //should be passed with the parameter name
//?means optional parameter,it may null or not
  print(firstnum + secondnum);
}
