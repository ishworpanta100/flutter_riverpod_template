import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../services/shared_pref_services.dart';

part 'theme_provider.g.dart';

// final themeDataProvider = StateProvider<int>((ref) {
//   final currentTheme = ref.watch(sharedPreferencesServiceProvider).themeData;
//   return currentTheme;
// });

//NotifierProvider with generator

@riverpod
class CurrentThemeData extends _$CurrentThemeData {
  @override
  int build() {
    final currentTheme = ref.watch(sharedPreferencesServiceProvider).themeData;
    return currentTheme;
  }

  void setThemeData(int value) {
    state = value;
    ref.read(sharedPreferencesServiceProvider).setThemeData = value;
  }
}
