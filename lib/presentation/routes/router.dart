import 'package:auto_route/auto_route.dart';
import 'package:uber_clone/presentation/auth/register_page.dart';
import 'package:uber_clone/presentation/auth/sign_in_page.dart';
import 'package:uber_clone/presentation/splash.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'splashScreen',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreen,
    ),
    AutoRoute(
      page: SignInPage,
      initial: true,
    ),
    AutoRoute(page: RegisterPage)
  ],
)
class $AppRouter {}
