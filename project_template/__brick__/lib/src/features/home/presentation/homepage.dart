import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/providers/theme_provider.dart';
import '../../../common/widgets/widgets.dart';
import '../../../constants/app_sizes.dart';
import '../../../routing/app_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              final isLightMode = ref.watch(currentThemeDataProvider) == 0;
              return IconButton(
                icon: Icon(isLightMode ? Icons.dark_mode : Icons.light_mode),
                onPressed: () {
                  ref.read(currentThemeDataProvider.notifier).setThemeData(isLightMode ? 1 : 0);
                },
              );
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text('Home Screen'),
          ),
          gapH24,
          PrimaryButton(
            text: 'Go to New Screen',
            onPressed: () {
              GoRouter.of(context).pushNamed(ScreenPaths.newScreen.name);
            },
          ),
        ],
      ),
    );
  }
}
