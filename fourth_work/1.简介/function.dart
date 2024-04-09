int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

var result = fibonacci(20);

//胖箭头——即简写语法，用于仅包含一条语句的函数。该语法在将匿名函数作为参数传递时非常有用。
//例如 flybyObjects.where((name) => name.contains('turn')).forEach(print);
//在上面的示例中。where()中传入的参数是一个匿名函数，且该例中将print()作为参数传递给了forEach()函数
