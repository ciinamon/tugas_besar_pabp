part of '_index.dart';

class UserxRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from UserxRepo');
    return x;
  }
}