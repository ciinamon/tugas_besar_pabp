part of '_index.dart';

class VocabsData {
  final rxTitle = 'Vocabs'.inj();

  final rxVocabList = Prov.vocab.st.rxVocabList;

  final rxIsCorrect = RM.inject<bool?>(() => null);
}
