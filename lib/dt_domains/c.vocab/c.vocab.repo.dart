part of '_index.dart';

class VocabRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from VocabRepo');
    return x;
  }
}