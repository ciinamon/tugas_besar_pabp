part of '_index.dart';

class UserxProv {
  final rxUserxList = RM.injectFuture<List<Userx>>(
    () => _sv.getUserxList(),
    initialState: [],
  );
}