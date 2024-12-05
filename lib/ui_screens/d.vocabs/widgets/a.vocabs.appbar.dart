part of '../_index.dart';

class VocabsAppbar extends StatelessWidget {
  const VocabsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      actions: [
        IconButton(
          onPressed: () => nav.toBottomSheet(const BottomSheetX()),
          icon: const Icon(Icons.more_vert),
        ),
        const SizedBoxW(5),
      ],
    );
  }
}
