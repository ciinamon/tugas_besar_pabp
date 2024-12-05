part of '_index.dart';

class AuthServ {
  void init() {
    logxx.i(AuthServ, '...');
    // ----- ----- -----
    listenAuthStateChanges();
  }

  void listenAuthStateChanges() {
    logzz.i(AuthServ, 'listenAuthStateChanges()');
    // ----- ----- -----
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) {
        _pv.rxSignedInUserx.st = null;
      } else {
        _pv.rxSignedInUserx.stateAsync = Serv.userx.getUserx(user.uid);
      }
    });
  }

  Future<void> signIn() async {
    logzz.i(AuthServ, 'signIn()');
    // ----- ----- -----
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> signOut() async {
    logzz.i(AuthServ, 'signOut()');
    // ----- ----- -----
    await FirebaseAuth.instance.signOut();
  }

  Future<void> delete() async {
    logzz.i(AuthServ, 'delete()');
    // ----- ----- -----
    await FirebaseAuth.instance.currentUser!.delete();
  }

  Future<void> incrementCurrentNo() async {
    logzz.i(AuthServ, 'incrementCurrentNo()');
    // ----- ----- -----
    final userx = _pv.rxSignedInUserx.st!;
    userx.currentNo = userx.currentNo + 1;
    _pv.rxSignedInUserx.st = userx;
    await FirebaseFirestore.instance.collection('users').doc(userx.uid).set(userx.toMap());
  }
}
