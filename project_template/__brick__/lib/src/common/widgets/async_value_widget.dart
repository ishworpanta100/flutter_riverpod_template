import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widgets.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    super.key,
    required this.value,
    required this.data,
    this.loadingWidget,
    this.errorWidget,
    this.onRefresh,
  });
  final AsyncValue<T> value;
  final Widget Function(T) data;
  final Widget? loadingWidget;
  final Widget? errorWidget;
  final VoidCallback? onRefresh;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: (e, st) =>
          errorWidget ??
          Center(
            child: ErrorMessageWidget(
              e.toString(),
              isLoading: value.isLoading,
              onRetry: onRefresh,
            ),
          ),
      loading: () => loadingWidget ?? const Center(child: CustomProgressWidget()),
    );
  }
}

/// Sliver equivalent of [AsyncValueWidget]
class AsyncValueSliverWidget<T> extends StatelessWidget {
  const AsyncValueSliverWidget({super.key, required this.value, required this.data});
  final AsyncValue<T> value;
  final Widget Function(T) data;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      loading: () => const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())),
      error: (e, st) => SliverToBoxAdapter(
        child: Center(child: ErrorMessageWidget(e.toString())),
      ),
    );
  }
}
