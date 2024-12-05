part of '_index.dart';

abstract class Data {
  static Injected<SampleSatuData> get sampleSatu => _sampleSatuData;
  static Injected<SampleDuaData> get sampleDua => _sampleDuaData;
  static Injected<SampleTigaData> get sampleTiga => _sampleTigaData;

  static Injected<HomeData> get home => _homeData;
  static Injected<AuthData> get auth => _authData;
  static Injected<UsersData> get users => _usersData;
  static Injected<VocabsData> get vocabs => _vocabsData;
}

final _sampleSatuData = RM1.inj(SampleSatuData(), Ctrl.sampleSatu.init);
final _sampleDuaData = RM1.inj(SampleDuaData(), Ctrl.sampleDua.init);
final _sampleTigaData = RM1.inj(SampleTigaData(), Ctrl.sampleTiga.init);

final _homeData = RM1.inj(HomeData(), Ctrl.home.init);
final _authData = RM1.inj(AuthData(), Ctrl.auth.init);
final _usersData = RM1.inj(UsersData(), Ctrl.users.init);
final _vocabsData = RM1.inj(VocabsData(), Ctrl.vocabs.init);
