import 'package:flutter/material.dart';

import '../../constants/app_sizes.dart';
import '../common_barrel.dart';

/// Primary button based on [ElevatedButton].
/// Useful for CTAs in the app.
/// @param text - text to display on the button.
/// @param isLoading - if true, a loading indicator will be displayed instead of
/// the text.
/// @param onPressed - callback to be called when the button is pressed.
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    this.isLoading = false,
    this.onPressed,
    this.foregroundColor,
    this.backgroundColor,
  });
  final String text;
  final bool isLoading;
  final VoidCallback? onPressed;

  final Color? backgroundColor;
  final Color? foregroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        // minimumSize: const Size.fromHeight(Sizes.p45),
        // disabledBackgroundColor: Theme.of(context).colorScheme.primary,
        // disabledForegroundColor: Theme.of(context).colorScheme.onPrimary,
        // backgroundColor: Theme.of(context).colorScheme.primary,
        // foregroundColor: Theme.of(context).colorScheme.onPrimary,
        disabledBackgroundColor: AppTheme.appPrimaryColor,
        disabledForegroundColor: AppTheme.white,
        backgroundColor: backgroundColor ?? AppTheme.appPrimaryColor,
        foregroundColor: foregroundColor ?? AppTheme.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.p8),
        ),
      ),
      child: isLoading
          ? SizedBox(
              height: Sizes.p28,
              width: Sizes.p28,
              child: CircularProgressIndicator(
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
                valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).colorScheme.primary),
              ),
            )
          : Text(
              text,
              textAlign: TextAlign.center,
              // style: Theme.of(context).textTheme.labelLarge,
            ),
    );
  }
}

class IconPrimaryButton extends StatelessWidget {
  const IconPrimaryButton({
    super.key,
    required this.text,
    this.isLoading = false,
    this.onPressed,
    required this.iconData,
  });
  final String text;
  final bool isLoading;
  final VoidCallback? onPressed;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(iconData),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(Sizes.p45),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.p8),
        ),
      ),
      label: isLoading
          ? const SizedBox(
              height: Sizes.p28,
              width: Sizes.p28,
              child: CircularProgressIndicator(),
            )
          : Text(
              text,
              textAlign: TextAlign.center,
              // style: Theme.of(context).textTheme.labelLarge,
            ),
    );
  }
}
