part of '_index.dart';

class AuthCtrl {
  init() => logxx.i(AuthCtrl, '...');

  Future<void> signIn() => Serv.auth.signIn();
}
