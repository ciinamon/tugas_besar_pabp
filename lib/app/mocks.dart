part of '_index.dart';

class Mocks {
  static final Mocks instance = Mocks._privateConstructor();

  Mocks._privateConstructor();

  Future<void> init() async {
    Repo.auth.injectMock(() => AuthRepoMock());
    Repo.userx.injectMock(() => UserxRepoMock());
    Repo.vocab.injectMock(() => VocabRepoMock());
    injectMocks();
  }

  injectMocks() {
    Repo.sample.injectMock(() => SampleRepoMock());
  }
}
