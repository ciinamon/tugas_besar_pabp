part of '_index.dart';

class AuthProv {
  final rxSignedInUserx = RM.injectFuture<Userx?>(
    () => Future.value(null),
  );
}
