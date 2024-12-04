part of '../_index.dart';

class UsersAppbar extends StatelessWidget {
  const UsersAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
