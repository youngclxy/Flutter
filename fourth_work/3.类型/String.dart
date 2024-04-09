void main(List<String> args) {
  //在dart语言中，String类型字段是UTF-16编码，这意味着可以使用单引号和双引号来创建一个String类型的变量。
  var s1 = '单引号创建成功.';
  var s2 = "双引号也能创建成功.";
  print(s1);
  print(s2);

  //${expression}是将String类型接上字符，在该语句中dart自动调用toString()方法.
  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, '
          'which is very handy.');
  assert('That deserves all caps. '
          '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. '
          'STRING INTERPOLATION is very handy!');

  //在dart语言中可以连接两段字符,两种方法
  var s3 = 'String '
      'concatenation'
      " works even over line breaks.";
  assert(s3 ==
      'String concatenation works even over '
          'line breaks.');
  var s4 = 'The + operator ' + 'works, as well.';
  assert(s4 == 'The + operator works, as well.');

  //可以通过使用‘r’字使得String类型可以转行
  var rs = r'In a raw string, not even \n gets special treatment.';
  print(rs);
}
