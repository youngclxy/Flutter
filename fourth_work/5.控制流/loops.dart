void main(List<String> args) {
  //For loops
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  var i;
  i = 0;
  //while and do-while
  while (i <= 5) {
    print(i);
    i++;
  }
  i = 0;
  do {
    print(i);
    i++;
  } while (i <= 6);

  //break跳出循环
  //continue跳出当前循环进入下次循环
}
