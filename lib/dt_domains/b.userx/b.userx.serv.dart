part of '_index.dart';

class UserxServ {
  void init() {
    logxx.i(UserxServ, '...');
  }

  Future<void> regisProtocol(String uid) async {
    logzz.i(UserxServ, 'regisProtocol()');
    // ----- ----- -----
    final isExist = await checkUserxIsExist(uid);
    if (!isExist) {
      addUserx();
    }
  }

  Future<bool> checkUserxIsExist(String docId) async {
    logzz.i(UserxServ, 'checkUserxIsExist()');
    // ----- ----- -----
    final result = await FirebaseFirestore.instance.collection('users').doc(docId).get();
    return result.exists;
  }

  Future<void> addUserx() async {
    logzz.i(UserxServ, 'addUserx()');
    // ----- ----- -----
    final user = FirebaseAuth.instance.currentUser!;
    final data = Userx(
      uid: user.uid,
      email: user.email!,
      createdAt: DateTime.now().millisecondsSinceEpoch.toString(),
      isPremium: false,
      role: 'client',
      currentNo: 1,
    ).toMap();
    FirebaseFirestore.instance.collection('users').doc(user.uid).set(data);
  }

  Future<Userx?> getUserx(String uid) async {
    logzz.i(UserxServ, 'getUserx()');
    // ----- ----- -----
    await regisProtocol(uid);
    final result = await FirebaseFirestore.instance.collection('users').doc(uid).get();
    final userx = result.data();
    if (userx == null) {
      return null;
    }
    return Userx.fromMap(userx);
  }

  Future<List<Userx>> getUserxList() async {
    logzz.i(UserxServ, 'getUserxList()');
    // ----- ----- -----
    List<Userx> listx = [];
    try {
      final db = FirebaseFirestore.instance;
      final ref = db.collection('users').where('role', isEqualTo: 'client').orderBy('created_at', descending: true);
      final result = await ref.get();
      listx = result.docs.map((e) => Userx.fromMap(e.data())).toList();
    } catch (e) {
      logzz.e(UserxServ, e.toString());
    }

    return listx;
  }

  Future<void> toggleIsPremium(bool isPremiumx, int index) async {
    logzz.i(UserxServ, 'toggleIsPremium()');
    // ----- ----- -----
    final userx = _pv.rxUserxList.st[index].copyWith(isPremium: isPremiumx);
    _pv.rxUserxList.st[index] = userx;
    _pv.rxUserxList.notify();
    await FirebaseFirestore.instance.collection('users').doc(userx.uid).set(userx.toMap());
  }
}
