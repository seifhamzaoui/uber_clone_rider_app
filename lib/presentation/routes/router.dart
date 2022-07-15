import 'package:auto_route/auto_route.dart';
import 'package:uber_clone/presentation/auth/register_page.dart';
import 'package:uber_clone/presentation/auth/sign_in_page.dart';
import 'package:uber_clone/presentation/splash.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'splashScreen',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: SplashScreen,
    ),
    AutoRoute(
      page: SignInPage,
    ),
    AutoRoute(page: RegisterPage)
  ],
)
class $AppRouter {}
