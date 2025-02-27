import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../constants/constants.dart';
import '../../styles/styles.dart';

class CustomFormFieldWidget extends StatelessWidget {
  const CustomFormFieldWidget({
    Key? key,
    required this.hintText,
    required this.formName,
    this.validator,
    this.keyboardType,
    this.obscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLength,
    this.initialValue,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.controller,
    this.decoration,
    this.contentPadding,
    this.textAlign = TextAlign.start,
    this.readOnly = false,
    this.onChanged,
    this.maxLines = 1,
    this.hintStyle,
    this.enabled = true,
  }) : super(key: key);

  final String hintText;
  final String formName;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? maxLength;
  final String? initialValue;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final EdgeInsetsGeometry? contentPadding;
  final TextAlign textAlign;
  final bool readOnly;
  final void Function(String?)? onChanged;
  final int maxLines;
  final TextStyle? hintStyle;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      textAlign: textAlign,
      name: formName,
      enabled: enabled,
      maxLines: maxLines,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      maxLength: maxLength,
      initialValue: initialValue,
      textInputAction: textInputAction,
      readOnly: readOnly,
      textCapitalization: textCapitalization,
      style: readOnly
          ? TextStyle(fontSize: Sizes.p14, fontWeight: FontWeight.normal, color: AppTheme.greyMedium)
          : const TextStyle(fontSize: Sizes.p14, fontWeight: FontWeight.normal),
      onChanged: onChanged,
      decoration: decoration ??
          InputDecoration(
            border: const UnderlineInputBorder(
                // borderRadius: const BorderRadius.all(Radius.circular(Sizes.p8)),
                // borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 0.5),
                ),
            enabledBorder: const UnderlineInputBorder(),
            disabledBorder: const UnderlineInputBorder(),
            contentPadding: contentPadding,
            hintText: hintText,
            suffixIcon: suffixIcon,
            alignLabelWithHint: true,
            icon: prefixIcon,
            iconColor: Theme.of(context).colorScheme.primary,
            hintMaxLines: 1,

            // prefixIconColor: Theme.of(context).colorScheme.primary,
            // suffixIconColor: Theme.of(context).colorScheme.primary,
            // prefixIconConstraints: const BoxConstraints(maxHeight: Sizes.p32, maxWidth: Sizes.p32, minWidth: Sizes.p32, minHeight: Sizes.p32),
            hintStyle: hintStyle ?? Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppTheme.black.withOpacity(0.8)),
            enabled: enabled,
            // prefixIcon: prefixIcon,
          ),
    );
  }
}
