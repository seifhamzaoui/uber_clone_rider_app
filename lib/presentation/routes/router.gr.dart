// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../auth/register_page.dart' as _i3;
import '../auth/sign_in_page.dart' as _i2;
import '../splash.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    SignInPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    RegisterPageRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterPageRouteArgs>(
          orElse: () => const RegisterPageRouteArgs());
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.RegisterPage(key: args.key));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashScreenRoute.name, path: '/splash-screen'),
        _i4.RouteConfig(SignInPageRoute.name, path: '/'),
        _i4.RouteConfig(RegisterPageRoute.name, path: '/register-page')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i4.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(SplashScreenRoute.name, path: '/splash-screen');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i4.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterPageRoute extends _i4.PageRouteInfo<RegisterPageRouteArgs> {
  RegisterPageRoute({_i5.Key? key})
      : super(RegisterPageRoute.name,
            path: '/register-page', args: RegisterPageRouteArgs(key: key));

  static const String name = 'RegisterPageRoute';
}

class RegisterPageRouteArgs {
  const RegisterPageRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'RegisterPageRouteArgs{key: $key}';
  }
}
