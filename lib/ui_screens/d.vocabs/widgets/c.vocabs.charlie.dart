part of '../_index.dart';

class VocabsCharlie extends StatelessWidget {
  const VocabsCharlie({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            _dt.rxVocabList.st.first.word,
            textScaler: const TextScaler.linear(2),
          ),
          Opacity(
            opacity: 0.5,
            child: Text(
              _ct.getPartOfSpeech(_dt.rxVocabList.st.first.pos),
              style: const TextStyle(
                fontStyle: FontStyle.italic,
              ),
              textScaler: const TextScaler.linear(1.2),
            ),
          ),
        ],
      ),
    );
  }
}
