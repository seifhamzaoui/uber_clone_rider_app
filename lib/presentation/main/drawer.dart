import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_clone/application/auth/auth_bloc/auth_bloc.dart';
import 'package:uber_clone/presentation/routes/router.gr.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: ListView(children: [
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              'Logout',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              BlocProvider.of<AuthBloc>(context, listen: false).add(AuthEvent.signout());
            },
          ),
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.map(
                initial: (s) => null,
                Loading: (s) => null,
                authenticated: (s) => null,
                notAuthenticated: (s) {
                  AutoRouter.of(context).push(SignInPageRoute());
                },
                error: (s) => null,
              );
            },
            child: Container(),
          ),
        ]),
      ),
    );
  }
}
