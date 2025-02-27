import 'package:flutter/material.dart';

import '../../src/utils/extensions/string_extension.dart';
import '../common/widgets/widgets.dart';

/// Simple not found screen used for 404 errors (page not found)
class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: EmptyPlaceholderWidget(
        message: '404 - Page not found!'.hardcoded,
      ),
    );
  }
}
