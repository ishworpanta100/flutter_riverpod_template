import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../src/utils/extensions/extensions.dart';
import 'common/providers/theme_provider.dart';
import 'common/styles/styles.dart';
import 'routing/app_router.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    final isSystemThemeMode = ref.watch(currentThemeDataProvider) == 2;
    final isLightMode = ref.watch(currentThemeDataProvider) == 0;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp.router(
        routerConfig: goRouter,
        debugShowCheckedModeBanner: false,
        restorationScopeId: 'app',
        onGenerateTitle: (BuildContext context) => "{{app_name.titleCase()}}",
        themeMode: AppTheme.getCurrentThemeMode(
          isSystemThemeMode: isSystemThemeMode,
          isLightTheme: isLightMode,
        ),
        darkTheme: AppTheme.darkTheme,
        theme: AppTheme.lightTheme,
      ),
    );
  }
}
