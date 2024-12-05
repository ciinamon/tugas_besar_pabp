part of '_index.dart';

class VocabsCtrl {
  init() => logxx.i(VocabsCtrl, '...');

  bool needPremiumAccount() {
    final user = Prov.auth.st.rxSignedInUserx.st!;
    return !user.isPremium && (user.currentNo >= Cons.treshold);
  }

  void nextVocab() => Serv.vocab.nextVocab();

  void chooseOption(String value) async {
    if (_dt.rxVocabList.st.first.translate == value) {
      _dt.rxIsCorrect.st = true;
      _dt.rxIsCorrect.notify();
      await Future.delayed(const Duration(seconds: 2));
      showDialog();
    } else {
      _dt.rxIsCorrect.refresh();
      _dt.rxIsCorrect.st = false;
      _dt.rxIsCorrect.notify();
    }
  }

  void showDialog() {
    nav.toDialog(
      Center(
        child: ElevatedButton(
          onPressed: () {
            nav.back();
            nextVocab();
          },
          child: const Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 12),
            child: Text(
              "next word",
              textScaler: TextScaler.linear(1.5),
            ),
          ),
        ),
      ),
      barrierColor: Colors.black87,
    );
  }

  String getPartOfSpeech(String value) {
    switch (value) {
      case 'a':
        return 'Article';
      case 'c':
        return 'Conjunction (Kata sambung)';
      case 'd':
        return 'Definite Article';
      case 'i':
        return 'Preposition (Kata depan)';
      case 'j':
        return 'Adjective (Kata Sifat)';
      case 'm':
        return 'Numeral (Angka)';
      case 'n':
        return 'Noun (Kata Benda)';
      case 'p':
        return 'Pronoun (Kata Ganti)';
      case 'r':
        return 'Adverb (Kata keterangan)';
      case 't':
        return '[ to ]';
      case 'u':
        return 'Interjection (Kata Seru)';
      case 'v':
        return 'Verb (Kata Kerja)';
      case 'x':
        return "[ not ] & [ n't ]";
      default:
        return 'unknown "part of speech"';
    }
  }
}
