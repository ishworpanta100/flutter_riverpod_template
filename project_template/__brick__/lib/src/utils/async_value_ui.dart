import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../common/widgets/widgets.dart';
import '../exceptions/app_exception.dart';
import 'extensions/extensions.dart';

extension AsyncValueUI on AsyncValue {
  void showAlertDialogOnError(BuildContext context) {
    if (!isLoading && hasError) {
      final message = _errorMessage(error);
      showExceptionAlertDialog(
        context: context,
        title: 'Error'.hardcoded,
        exception: message,
      );
    }
  }

  String _errorMessage(Object? error) {
    if (error is AppException) {
      return error.details.message;
    } else {
      return error.toString();
    }
  }
}
