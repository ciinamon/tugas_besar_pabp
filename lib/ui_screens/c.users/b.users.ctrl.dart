part of '_index.dart';

class UsersCtrl {
  init() => logxx.i(UsersCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
