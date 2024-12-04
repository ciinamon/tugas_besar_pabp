part of '_index.dart';

abstract class Prov {
  static Injected<AuthProv> get auth => _authProv;
  static Injected<UsersProv> get users => _usersProv;
  static Injected<SampleProv> get sample => _sampleProv;
}

final _sampleProv = RM2.inj(SampleProv());

final _authProv = RM2.inj(AuthProv());
final _usersProv = RM2.inj(UsersProv());
