part of '_index.dart';

class WordsData {
  final rxTitle = 'Words'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
