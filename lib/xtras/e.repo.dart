part of '_index.dart';

abstract class Repo {
  static Injected<SampleRepo> get sample => _sampleRepo;
  static Injected<AuthRepo> get auth => _authRepo;
  static Injected<UsersRepo> get users => _usersRepo;
}

final _sampleRepo = RM3.inj(SampleRepo());

final _authRepo = RM3.inj(AuthRepo());
final _usersRepo = RM3.inj(UsersRepo());
