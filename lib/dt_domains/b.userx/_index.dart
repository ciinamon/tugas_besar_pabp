import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';
import '../_models/_index.dart';

part 'a.userx.prov.dart';
part 'b.userx.serv.dart';
part 'c.userx.repo.dart';
part 'd.userx.repo.mock.dart';

UserxProv get _pv => Prov.userx.st;
UserxServ get _sv => Serv.userx;
// UserxRepo get _rp => Repo.userx.st;
