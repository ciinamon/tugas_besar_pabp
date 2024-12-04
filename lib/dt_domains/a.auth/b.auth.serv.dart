part of '_index.dart';

class AuthServ {
  void init() {
    logxx.i(AuthServ, '...');
  }

  Future<UserCredential> signIn() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    final userCred = await FirebaseAuth.instance.signInWithCredential(credential);
    debugPrint(userCred.user!.uid);
    Serv.users.userxCreate();
    return userCred;
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<void> delete() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }
}
