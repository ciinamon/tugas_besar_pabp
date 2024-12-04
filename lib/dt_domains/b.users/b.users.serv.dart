part of '_index.dart';

class UsersServ {
  void init() {
    logxx.i(UsersServ, '...');
  }

  Future<void> userxCreate() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final data = Userx(
        uid: user.uid,
        email: user.email!,
        createdAt: DateTime.now().millisecondsSinceEpoch.toString(),
        isPremium: false,
        role: 'client',
      ).toMap();

      final x = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
      if (!x.exists) {
        FirebaseFirestore.instance.collection('users').doc(user.uid).set(data);
      }
    }
  }

  // void userxGet() async {
  //   final x = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
  // }
}
