import 'package:auto_route/auto_route.dart';
import 'package:uber_clone/presentation/app.dart';
import 'package:uber_clone/presentation/auth/register_page.dart';
import 'package:uber_clone/presentation/auth/sign_in_page.dart';
import 'package:uber_clone/presentation/main/search_destination_page.dart';
import 'package:uber_clone/presentation/splash.dart';

import '../main/home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'splashScreen',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: SplashScreen,
    ),
    AutoRoute(page: SignInPage),
    AutoRoute(page: RegisterPage),
    AutoRoute(page: HomePage),
  ],
)
class $AppRouter {}
