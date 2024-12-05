import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';
import '../_models/_index.dart';

part 'a.auth.prov.dart';
part 'b.auth.serv.dart';
part 'c.auth.repo.dart';
part 'd.auth.repo.mock.dart';

AuthProv get _pv => Prov.auth.st;
// AuthServ get _sv => Serv.auth;
// AuthRepo get _rp => Repo.auth.st;
