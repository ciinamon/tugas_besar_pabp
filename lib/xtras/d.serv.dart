part of '_index.dart';

abstract class Serv {
  static SampleServ get sample => SampleServ();
  
  static AuthServ get auth => AuthServ();
  static UserxServ get userx => UserxServ();
  static VocabServ get vocab => VocabServ();
}
