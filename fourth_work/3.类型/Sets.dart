void main(List<String> args) {
  //set：集合 创建方式
  var halogens = {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine'
  }; //集合创建完成；

  //创建空集方法：{}{}Set;
  var names = <String>{};
  // Set<String> names = {}; // 这也能创建一个集合
  // var names = {}; // 创建一个图，不是集合

  //添加元素进入集合中add()addAll()
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  //判断集合长度
  assert(elements.length == 5);

  //创建常量集合
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
// constantSet.add('helium'); // 会报错，因为常量不可更改.
}
