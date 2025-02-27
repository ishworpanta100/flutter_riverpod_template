import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/app.dart';
import 'src/common/services/shared_pref_services.dart';
import 'src/exceptions/app_error_handler.dart';
import 'src/exceptions/logger/loggers.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // * Keep native splash screen up until app is finished initializing
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // * Shared Preferences initialization
  final sharedPreferences = await SharedPreferences.getInstance();

  // * Create ProviderContainer with any required overrides
  final container = ProviderContainer(
    overrides: [
      sharedPreferencesServiceProvider.overrideWithValue(
        SharedPreferencesService(sharedPreferences),
      ),
    ],
    observers: [AsyncErrorLogger()],
  );

  // * Use this container technique to register listener before runApp
  final errorLogger = container.read(errorLoggerProvider);

  // * Register error handlers.
  registerErrorHandlers(errorLogger);

  // * Entry point of the app
  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    ),
  );

  // * Remove splash screen when app is initialized
  FlutterNativeSplash.remove();
}
