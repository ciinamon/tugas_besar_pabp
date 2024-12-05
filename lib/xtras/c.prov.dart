part of '_index.dart';

abstract class Prov {
  static Injected<SampleProv> get sample => _sampleProv;

  static Injected<AuthProv> get auth => _authProv;
  static Injected<UserxProv> get userx => _userxProv;
  static Injected<VocabProv> get vocab => _vocabProv;
}

final _sampleProv = RM2.inj(SampleProv());

final _authProv = RM2.inj(AuthProv());
final _userxProv = RM2.inj(UserxProv());
final _vocabProv = RM2.inj(VocabProv());
