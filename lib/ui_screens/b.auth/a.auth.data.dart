part of '_index.dart';

class AuthData {
  final rxTitle = 'Auth'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
