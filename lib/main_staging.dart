import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:one_studio_core/core.dart';
import 'package:quotes/routes/app_router.dart';

import 'quotes_app.dart';
import 'injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await init();
  runApp(
    EasyLocalization(
      child: QuoteApp(appRouter: sl<AppRouter>()),
      startLocale: const Locale('ar'),
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      fallbackLocale: const Locale('en'),
      path: 'assets/langs',
    ),
  );
}
