part of '_index.dart';

class VocabServ {
  void init() {
    logxx.i(VocabServ, '...');
  }

  Future<List<Vocab>> getVocabList() async {
    logzz.i(VocabServ, 'getVocabList()');
    // ----- ----- -----
    List<Vocab> listx = [];
    final currentNo = Prov.auth.st.rxSignedInUserx.st?.currentNo;
    try {
      final db = FirebaseFirestore.instance;
      final ref = db.collection(Cons.strVocabs).limit(Cons.limit).orderBy('no').startAt([currentNo]);
      final result = await ref.get();
      listx = result.docs.map((e) => Vocab.fromMap(e.data())).toList();
    } catch (e) {
      logzz.e(VocabServ, e.toString());
    }
    return listx;
  }

  void nextVocab() {
    Serv.auth.incrementCurrentNo();
    _pv.rxVocabList.stateAsync = getVocabList();
  }
}
