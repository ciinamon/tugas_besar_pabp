part of '_index.dart';

class VocabProv {
  final rxVocabList = RM.injectFuture<List<Vocab>>(
     () => _sv.getVocabList(),
    initialState: [],
  );
}
