part of '_index.dart';

class AuthCtrl {
  init() => logxx.i(AuthCtrl, '...');

  Future<void> signIn() => Serv.auth.signIn();

  Future<void> signOut() => Serv.auth.signOut();

  Future<void> delete() => Serv.auth.delete();
}
