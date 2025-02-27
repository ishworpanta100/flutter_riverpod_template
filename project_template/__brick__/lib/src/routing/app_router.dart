import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/home/presentation/homepage.dart';
import '../features/home/presentation/new_screen.dart';
import 'custom_routes.dart';
import 'not_found_screen.dart';

part 'app_router.g.dart';

enum ScreenPaths {
  home,
  newScreen,
}

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        path: '/',
        name: ScreenPaths.home.name,
        builder: (context, state) => const HomeScreen(),
        routes: [
          AppRoute(
            path: ScreenPaths.newScreen.name,
            name: ScreenPaths.newScreen.name,
            useFade: true,
            builder: (GoRouterState s) => const NewScreen(),
          )
        ],
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
