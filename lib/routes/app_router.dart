import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:quotes/features/home/home_page.dart';
import 'package:quotes/features/random_quotes/presentation/screens/random_quotes_page.dart';
import 'package:quotes/routes/guards/auth_guard.dart';

import '../features/auth/presentation/login_page.dart';
import '../features/auth/routes.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage,),
    AutoRoute(page: RandomQuotePage, initial: true),
    ...authRoutes,
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter(AuthGuard authGuard) : super();
}
