import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  FirebaseDatabase get database => FirebaseDatabase.instance;
  FirebaseAuth get auth => FirebaseAuth.instance;
}
