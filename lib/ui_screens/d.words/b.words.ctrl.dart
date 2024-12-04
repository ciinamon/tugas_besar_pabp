part of '_index.dart';

class WordsCtrl {
  init() => logxx.i(WordsCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
