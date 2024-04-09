void main(List<String> args) {
  var m = 1;
  var hex = 0xDEADBEEF;

  var y = 1.1;
  var exponents = 1.42e5;

  num x = 1; // x可以是int也可以是double
  x += 2.5;

  //类型转换
  // String -> int
  var one = int.parse('1');
  assert(one == 1);

// String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

// int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

}
