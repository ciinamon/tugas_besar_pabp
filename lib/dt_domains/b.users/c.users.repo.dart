part of '_index.dart';

class UsersRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from UsersRepo');
    return x;
  }
}