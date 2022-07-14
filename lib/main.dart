import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uber_clone/injectable.dart';
import 'package:uber_clone/presentation/app.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'second',
    options: const FirebaseOptions(
      apiKey: "AIzaSyCCW8GmA9KDlaaJNCDNBfA-xIfnzfbVoSs",
      appId: "1:61157004738:android:c25c5590129a3e0752725b",
      messagingSenderId: "1:61157004738:android:c25c5590129a3e0752725b",
      projectId: "uber-clone-706c5",
      databaseURL: "https://uber-clone-706c5-default-rtdb.europe-west1.firebasedatabase.app",
    ),
  );
  runApp(App());
}
