part of '_index.dart';

abstract class Ctrl {
  static HomeCtrl get home => HomeCtrl();
  static SampleSatuCtrl get sampleSatu => SampleSatuCtrl();
  static SampleDuaCtrl get sampleDua => SampleDuaCtrl();
  static SampleTigaCtrl get sampleTiga => SampleTigaCtrl();
  static AuthCtrl get auth => AuthCtrl();
  static UsersCtrl get users => UsersCtrl();
  static WordsCtrl get words => WordsCtrl();
}
