part of '_index.dart';

class UserxRepoMock implements UserxRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from UserxRepoMock');
    return x;
  }
}