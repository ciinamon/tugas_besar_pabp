part of '_index.dart';

class Mocks {
  static final Mocks instance = Mocks._privateConstructor();

  Mocks._privateConstructor();

  Future<void> init() async {
    Repo.auth.injectMock(() => AuthRepoMock());
    Repo.users.injectMock(() => UsersRepoMock());
    injectMocks();
  }

  injectMocks() {
    Repo.sample.injectMock(() => SampleRepoMock());
  }
}
