import 'package:flutter/material.dart';

import '../../../src/utils/extensions/extensions.dart';
import '../../utils/extensions/theme_extension.dart';

const kDialogDefaultKey = Key('dialog-default-key');

/// Generic function to show a platform-aware Material or Cupertino dialog
Future<bool?> showAlertDialog({
  required BuildContext context,
  required String title,
  String? content,
  String? cancelActionText,
  String defaultActionText = 'OK',
}) async {
  return showAdaptiveDialog(
    context: context,
    barrierDismissible: cancelActionText != null,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      title: Text(
        title,
        style: context.title?.copyWith(
          // color: AppTheme.appPrimaryColor,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      content: content != null ? Text(content) : null,
      actions: <Widget>[
        if (cancelActionText != null)
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(cancelActionText),
            onPressed: () => Navigator.of(context).pop(false),
          ),
        OutlinedButton(
          key: kDialogDefaultKey,
          style: OutlinedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(defaultActionText),
          onPressed: () => Navigator.of(context).pop(true),
        ),
      ],
    ),
  );
}

/// Generic function to show a platform-aware Material or Cupertino error dialog
Future<void> showExceptionAlertDialog({
  required BuildContext context,
  required String title,
  required dynamic exception,
}) =>
    showAlertDialog(
      context: context,
      title: title,
      content: exception.toString(),
      defaultActionText: 'OK'.hardcoded,
    );

Future<void> showNotImplementedAlertDialog({required BuildContext context}) => showAlertDialog(
      context: context,
      title: 'Not implemented'.hardcoded,
    );
