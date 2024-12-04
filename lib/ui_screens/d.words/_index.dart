import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.words.data.dart';
part 'b.words.ctrl.dart';
part 'c.words.view.dart';
part 'widgets/a.words.appbar.dart';
part 'widgets/b.words.fab.dart';
part 'widgets/c.words.charlie.dart';
part 'widgets/d.words.delta.dart';
part 'widgets/e.words.echo.dart';

WordsData get _dt => Data.words.st;
WordsCtrl get _ct => Ctrl.words;

