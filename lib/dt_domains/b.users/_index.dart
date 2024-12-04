import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_besar_pabp/dt_domains/_index.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.users.prov.dart';
part 'b.users.serv.dart';
part 'c.users.repo.dart';
part 'd.users.repo.mock.dart';

UsersProv get _pv => Prov.users.st;
UsersServ get _sv => Serv.users;
UsersRepo get _rp => Repo.users.st;
