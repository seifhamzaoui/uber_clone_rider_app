import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:uber_clone/injectable.dart';
import 'package:uber_clone/presentation/app.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.apps.forEach((element) {
    element.delete();
  });
  await Firebase.initializeApp();
  Firebase.apps.forEach(
    (element) => print(element.name),
  );

  runApp(App());
}
