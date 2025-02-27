import 'package:flutter/material.dart';

import '../common_barrel.dart';

buildSnackBar(BuildContext context, String message, {bool isError = false}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white)),
      backgroundColor: isError ? AppTheme.red : Theme.of(context).colorScheme.primary,
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 4),
    ),
  );
}
