// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter(
      {GlobalKey<NavigatorState>? navigatorKey, required this.authGuard})
      : super(navigatorKey);

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    RandomQuoteRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RandomQuotePage());
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoginPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(RandomQuoteRoute.name, path: '/', guards: [authGuard]),
        RouteConfig(HomeRoute.name, path: '/home-page'),
        RouteConfig(LoginRoute.name, path: '/login-page')
      ];
}

/// generated route for
/// [RandomQuotePage]
class RandomQuoteRoute extends PageRouteInfo<void> {
  const RandomQuoteRoute() : super(RandomQuoteRoute.name, path: '/');

  static const String name = 'RandomQuoteRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}
