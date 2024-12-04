part of '_index.dart';

class WordsView extends StatelessWidget {
  const WordsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: WordsAppbar(),
      ),
      floatingActionButton: WordsFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WordsCharlie(),
            WordsDelta(),
            WordsEcho(),
          ],
        ),
      ),
    );
  }
}
