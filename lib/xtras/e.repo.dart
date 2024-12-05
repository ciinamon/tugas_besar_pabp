part of '_index.dart';

abstract class Repo {
  static Injected<SampleRepo> get sample => _sampleRepo;
  
  static Injected<AuthRepo> get auth => _authRepo;
  static Injected<UserxRepo> get userx => _userxRepo;
  static Injected<VocabRepo> get vocab => _vocabRepo;
}

final _sampleRepo = RM3.inj(SampleRepo());

final _authRepo = RM3.inj(AuthRepo());
final _userxRepo = RM3.inj(UserxRepo());
final _vocabRepo = RM3.inj(VocabRepo());
