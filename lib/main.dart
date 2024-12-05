import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:tugas_besar_pabp/firebase_options.dart';

import 'app/_index.dart';

void main() async {
  //todo: uncomment line below to init repo.mock files
  // await Mocks.instance.init();

  WidgetsFlutterBinding();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await inits();

  await initializeDateFormatting();

  runApp(const App());
}
