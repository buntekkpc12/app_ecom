import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // todo: add widgets binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  // todo: init local storage
  //todo: await native splash
  //todo: initialize firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //todo: initialize authentication

  runApp(const App());
}
