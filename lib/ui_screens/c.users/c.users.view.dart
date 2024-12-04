part of '_index.dart';

class UsersView extends StatelessWidget {
  const UsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: UsersAppbar(),
      ),
      floatingActionButton: UsersFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UsersCharlie(),
            UsersDelta(),
            UsersEcho(),
          ],
        ),
      ),
    );
  }
}
