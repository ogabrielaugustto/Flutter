import 'dart:math';

class GeneratorRandomNumber {
  static int randomNumber(int numberMax) {
    Random n = Random();
    return n.nextInt(numberMax);
  }
}
