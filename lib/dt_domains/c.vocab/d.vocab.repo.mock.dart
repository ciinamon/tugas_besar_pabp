part of '_index.dart';

class VocabRepoMock implements VocabRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from VocabRepoMock');
    return x;
  }
}