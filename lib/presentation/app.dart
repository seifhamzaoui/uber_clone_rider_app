import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_clone/application/auth/auth_bloc/auth_bloc.dart';
import 'package:uber_clone/injectable.dart';
import 'package:uber_clone/presentation/routes/router.gr.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final AppRouter _approuter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => getIt<AuthBloc>()..add(AuthEvent.started()),
      child: MaterialApp.router(
        theme: ThemeData(fontFamily: 'Bolt-regular'),
        debugShowCheckedModeBanner: false,
        routerDelegate: _approuter.delegate(),
        routeInformationParser: _approuter.defaultRouteParser(),
      ),
    );
  }
}
