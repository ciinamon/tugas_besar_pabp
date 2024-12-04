part of '_index.dart';

class UsersRepoMock implements UsersRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from UsersRepoMock');
    return x;
  }
}