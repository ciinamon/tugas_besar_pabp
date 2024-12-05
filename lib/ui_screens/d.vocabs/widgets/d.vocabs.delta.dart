part of '../_index.dart';

class VocabsDelta extends StatelessWidget {
  const VocabsDelta({super.key});

  String randomPath() {
    final random = Random().nextInt(3);
    return 'assets/animated_emoji/webp/$random.webp';
  }

  @override
  Widget build(BuildContext context) {
    const pathNull = 'assets/animated_emoji/webp/peeking.webp';
    const pathCorrect = 'assets/animated_emoji/webp/star-struck.webp';

    return OnReactive(
      () {
        return SizedBox(
          width: 100,
          height: 100,
          child: Image.asset(
            _dt.rxIsCorrect.st == null
                ? pathNull
                : _dt.rxIsCorrect.st == true
                    ? pathCorrect
                    : randomPath(),
          ),
        );
      },
    );
  }
}
