part of '_index.dart';

class UsersCtrl {
  init() => logxx.i(UsersCtrl, '...');

  toggleIsPremium(bool isPremiumx, int index) => Serv.userx.toggleIsPremium(isPremiumx, index);
}
