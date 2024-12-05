part of '_index.dart';

class BottomSheetX extends StatelessWidget {
  const BottomSheetX({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      constraints: const BoxConstraints(
        minHeight: 350,
        maxHeight: 450,
      ),
      builder: (context) {
        final userx = Prov.auth.st.rxSignedInUserx.st!;
        return Center(
          child: Column(
            children: [
              const SizedBoxH(30),
              Text(userx.email),
              const SizedBoxH(15),
              Text(userx.role),
              const SizedBoxH(15),
              Text('current no : ${userx.currentNo}'),
              const Spacer(),
              Text(userx.isPremium ? 'premium account' : 'free account'),
              const Spacer(),
              OutlinedButton(
                onPressed: () => Serv.auth.signOut().then((value) => nav.back()),
                child: const Text('sign out'),
              ),
              const SizedBoxH(50),
              TextButton(
                onPressed: () => Serv.auth.delete().then((value) => nav.back()),
                child: const Text('delete account'),
              ),
              const SizedBoxH(30),
            ],
          ),
        );
      },
    );
  }
}
