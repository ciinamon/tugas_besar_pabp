import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../ui_widgets/_index.dart';
import '../../xtras/_index.dart';

part 'a.vocabs.data.dart';
part 'b.vocabs.ctrl.dart';
part 'c.vocabs.view.dart';
part 'widgets/a.vocabs.appbar.dart';
part 'widgets/b.vocabs.fab.dart';
part 'widgets/c.vocabs.charlie.dart';
part 'widgets/d.vocabs.delta.dart';
part 'widgets/e.vocabs.echo.dart';
part 'widgets/g.vocabs.golf.dart';

VocabsData get _dt => Data.vocabs.st;
VocabsCtrl get _ct => Ctrl.vocabs;
