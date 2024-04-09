void main(List<String> args) {
  //添加一个映射
  var gifts = {'first': 'partridge'};
  gifts['fourth'] = 'calling birds'; // 添加一组映射

  //判断key和value是否匹配
  assert(gifts['first'] == 'partridge');

  //判断key是否位于映射中
  assert(gifts['fifth'] == null);

  //判断映射长度
  assert(gifts.length == 2);

  //创建常量映射
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

// constantMap[2] = 'Helium'; // 创建失败，常量不可更改.

// 点差运算.
  //...list将list添加至list2
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  assert(list2.length == 4);

  //...?若该操作符右端的值可能为null使用该操作符
  list = [];
  list2 = [0, ...list];
  assert(list2.length == 1);
}
