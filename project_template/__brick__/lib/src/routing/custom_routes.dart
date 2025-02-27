import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Custom GoRoute sub-class to make the router declaration easier to read
class AppRoute extends GoRoute {
  AppRoute({
    required String path,
    required String name,
    required Widget Function(GoRouterState s) builder,
    List<GoRoute> routes = const [],
    this.useFade = false,
  }) : super(
          path: path,
          name: name,
          routes: routes,
          pageBuilder: (context, state) {
            final pageContent = Scaffold(
              body: builder(state),
              resizeToAvoidBottomInset: false,
            );
            if (useFade) {
              return CustomTransitionPage(
                key: state.pageKey,
                child: pageContent,
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              );
            }

            return CupertinoPage(child: pageContent);
          },
        );
  final bool useFade;
}
