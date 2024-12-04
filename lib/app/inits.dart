part of '_index.dart';

Future<void> inits() async {
  logx.wtf('inits start');

  Serv.sample.init();
  Serv.auth.init();
  Serv.users.init();
  logx.wtf('inits success');
}
