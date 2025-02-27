import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomDropDownFormField<T> extends StatelessWidget {
  const CustomDropDownFormField({
    Key? key,
    required this.name,
    this.validator,
    required this.items,
    this.onChanged,
    this.initialValue,
    this.decoration,
    this.hintStyle,
    this.style,
    this.hintText,
    this.prefixIcon,
  }) : super(key: key);

  final String name;
  final String? Function(T?)? validator;
  final List<DropdownMenuItem<T>> items;
  final void Function(T?)? onChanged;
  final T? initialValue;
  final InputDecoration? decoration;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final String? hintText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown<T?>(
      key: key,
      name: name,
      items: items,
      onChanged: onChanged,
      initialValue: initialValue,
      style: style,
      validator: validator,
      decoration: decoration ??
          InputDecoration(
            border: const UnderlineInputBorder(
                // borderRadius: const BorderRadius.all(Radius.circular(Sizes.p8)),
                // borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 0.5),
                ),
            enabledBorder: const UnderlineInputBorder(),
            disabledBorder: const UnderlineInputBorder(),
            alignLabelWithHint: true,
            icon: prefixIcon,
            iconColor: Theme.of(context).colorScheme.primary,
            hintMaxLines: 1,

            // prefixIcon: prefixIcon,
            // prefixIconColor: Theme.of(context).colorScheme.primary,
            // prefixIconConstraints: const BoxConstraints(maxHeight: Sizes.p32, maxWidth: Sizes.p32, minWidth: Sizes.p32, minHeight: Sizes.p32),
            hintText: hintText,
            hintStyle: hintStyle,
          ),
    );
  }
}
