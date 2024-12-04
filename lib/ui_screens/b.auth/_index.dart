import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.auth.data.dart';
part 'b.auth.ctrl.dart';
part 'c.auth.view.dart';
part 'widgets/a.auth.appbar.dart';
part 'widgets/b.auth.fab.dart';
part 'widgets/c.auth.charlie.dart';
part 'widgets/d.auth.delta.dart';
part 'widgets/e.auth.echo.dart';

AuthData get _dt => Data.auth.st;
AuthCtrl get _ct => Ctrl.auth;
