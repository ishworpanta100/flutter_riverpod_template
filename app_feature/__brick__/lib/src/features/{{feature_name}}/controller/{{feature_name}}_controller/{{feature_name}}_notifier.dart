import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '{{feature_name}}_state.dart';


class {{feature_name.pascalCase()}}Notifier extends StateNotifier<{{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Notifier() : super({{feature_name.pascalCase()}}State());

  /// Loading state
  void loadingState() {
    state = state.copyWith(value: const AsyncValue.loading());
  }

  /// Loaded State
  void loadedState() {
    state = state.copyWith(value: const AsyncValue.data(null));
  }


  Future<void> doSomething() async {
    loadingState();
    // Do something
    loadedState();
  }

}
