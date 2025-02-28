import 'package:hooks_riverpod/hooks_riverpod.dart';

class {{feature_name.pascalCase()}}State {
  {{feature_name.pascalCase()}}State({
    this.value = const AsyncValue.data(null),
  });

  final AsyncValue<void> value;

  bool get isLoading => value.isLoading;

  {{feature_name.pascalCase()}}State copyWith({
     AsyncValue<void>? value,
  }) {
    return {{feature_name.pascalCase()}}State(
      value: value ?? this.value,
    );
  }
}
