import 'package:auto_route/auto_route.dart';
import 'package:bond/features/auth/presentation/login_page.dart';
import 'package:bond/features/home/home_page.dart';
import 'package:bond/features/random_quotes/presentation/screens/random_quotes_page.dart';
import 'package:bond/routes/guards/auth_guard.dart';
import 'package:flutter/cupertino.dart';

import '../features/auth/routes.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: RandomQuotePage, guards: [AuthGuard], initial: true),
    AutoRoute(page: HomePage,),
    ...authRoutes,
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter(AuthGuard authGuard) : super(authGuard: authGuard);
}
