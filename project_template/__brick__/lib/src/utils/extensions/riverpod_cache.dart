import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

extension on AutoDisposeFutureProviderRef<Object?> {
  void cacheFor(Duration duration) {
    final keepAliveLink = keepAlive();
    Timer(duration, () {
      keepAliveLink.close();
    });
  }
}
