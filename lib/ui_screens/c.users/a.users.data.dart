part of '_index.dart';

class UsersData {
  final rxTitle = 'Users'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
