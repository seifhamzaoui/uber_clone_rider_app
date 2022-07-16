import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_clone/application/auth/auth_bloc/auth_bloc.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';
import 'package:uber_clone/presentation/routes/router.gr.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            authenticated: (s) {
              AutoRouter.of(context).push(HomePageRoute());
            },
            notAuthenticated: (s) {
              AutoRouter.of(context).push(SignInPageRoute());
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            initial: (s) {
              return Center(child: CircularProgressIndicator());
            },
            Loading: (s) {
              return Center(child: CircularProgressIndicator());
            },
            orElse: () {
              return Center(
                  child: OutlinedButton(
                child: Text('We try to resolve the app'),
                onPressed: () {},
              ));
            },
            error: (s) {
              return Center(child: Text('eror occured'));
            },
          );
        },
      ),
    );
  }
}
