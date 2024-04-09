import 'class.dart';

class CanDescrible implements Describable {
  @override
  void describe() {
    // TODO: implement describe
  }

  @override
  void describveWithEmphasis() {
    // TODO: implement describveWithEmphasis
  }
}

abstract class Describable {
  void describe();

  void describveWithEmphasis() {
    print('========');
    describe();
    print('========');
  }
}

void main(List<String> args) {
  var makeprint = CanDescrible();
  makeprint.describveWithEmphasis();
}
