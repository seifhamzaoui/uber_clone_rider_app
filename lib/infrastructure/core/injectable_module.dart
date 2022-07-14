import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  FirebaseDatabase get database => FirebaseDatabase.instanceFor(app: Firebase.apps[0]);
  FirebaseAuth get auth => FirebaseAuth.instance;
}
