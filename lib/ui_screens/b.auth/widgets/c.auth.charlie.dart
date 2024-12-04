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
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => _ct.signOut(),
          child: const Text("Sign out"),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => _ct.delete(),
          child: const Text("Delete"),
        ),
      ],
    );
  }
}
