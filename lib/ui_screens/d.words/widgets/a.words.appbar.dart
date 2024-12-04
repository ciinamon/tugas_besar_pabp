part of '../_index.dart';

class WordsAppbar extends StatelessWidget {
  const WordsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
