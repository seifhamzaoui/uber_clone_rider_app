// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../auth/register_page.dart' as _i3;
import '../auth/sign_in_page.dart' as _i2;
import '../main/home_page.dart' as _i4;
import '../main/search_destination_page.dart' as _i5;
import '../splash.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    SignInPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    RegisterPageRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterPageRouteArgs>(
          orElse: () => const RegisterPageRouteArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.RegisterPage(key: args.key));
    },
    HomePageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    SearchDestinationRoute.name: (routeData) {
      final args = routeData.argsAs<SearchDestinationRouteArgs>(
          orElse: () => const SearchDestinationRouteArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.SearchDestination(key: args.key));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i6.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i6.RouteConfig(RegisterPageRoute.name, path: '/register-page'),
        _i6.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i6.RouteConfig(SearchDestinationRoute.name,
            path: '/search-destination')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i6.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i6.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterPageRoute extends _i6.PageRouteInfo<RegisterPageRouteArgs> {
  RegisterPageRoute({_i7.Key? key})
      : super(RegisterPageRoute.name,
            path: '/register-page', args: RegisterPageRouteArgs(key: key));

  static const String name = 'RegisterPageRoute';
}

class RegisterPageRouteArgs {
  const RegisterPageRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'RegisterPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i6.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i5.SearchDestination]
class SearchDestinationRoute
    extends _i6.PageRouteInfo<SearchDestinationRouteArgs> {
  SearchDestinationRoute({_i7.Key? key})
      : super(SearchDestinationRoute.name,
            path: '/search-destination',
            args: SearchDestinationRouteArgs(key: key));

  static const String name = 'SearchDestinationRoute';
}

class SearchDestinationRouteArgs {
  const SearchDestinationRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'SearchDestinationRouteArgs{key: $key}';
  }
}
