part of '_index.dart';

abstract class Ctrl {
  static SampleSatuCtrl get sampleSatu => SampleSatuCtrl();
  static SampleDuaCtrl get sampleDua => SampleDuaCtrl();
  static SampleTigaCtrl get sampleTiga => SampleTigaCtrl();
  
  static HomeCtrl get home => HomeCtrl();
  static AuthCtrl get auth => AuthCtrl();
  static UsersCtrl get users => UsersCtrl();
  static VocabsCtrl get vocabs => VocabsCtrl();
}
