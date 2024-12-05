part of '../_index.dart';

class AuthCharlie extends StatelessWidget {
  const AuthCharlie({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => _ct.signIn(),
          child: const Text("Google Sign in"),
        ),
      ],
    );
  }
}
