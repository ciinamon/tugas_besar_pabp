import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';
import '../_models/_index.dart';

part 'a.vocab.prov.dart';
part 'b.vocab.serv.dart';
part 'c.vocab.repo.dart';
part 'd.vocab.repo.mock.dart';

VocabProv get _pv => Prov.vocab.st;
VocabServ get _sv => Serv.vocab;
// VocabRepo get _rp => Repo.vocab.st;
