import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../../constants/constants.dart';
import '../../utils/extensions/extensions.dart';
import '../common_barrel.dart';

class ErrorMessageWidget extends StatelessWidget {
  const ErrorMessageWidget(this.errorMessage, {super.key, this.onRetry, this.isLoading = false});
  final String errorMessage;
  final VoidCallback? onRetry;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          errorMessage,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.red),
        ),
        gapH24,
        if (onRetry != null)
          PrimaryButton(
            onPressed: onRetry,
            isLoading: isLoading,
            text: 'Retry'.hardcoded,
          ),
      ],
    );
  }
}

class CustomProgressWidget extends StatelessWidget {
  const CustomProgressWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.p48,
      width: Sizes.p48,
      child: LoadingIndicator(
        indicatorType: Indicator.ballSpinFadeLoader,
        colors: [Theme.of(context).colorScheme.primary],
      ),
    );
  }
}

class CustomProgressWidget1 extends StatelessWidget {
  const CustomProgressWidget1({super.key});
  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator();
  }
}
