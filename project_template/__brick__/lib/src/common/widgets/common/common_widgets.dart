import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../utils/extensions/theme_extension.dart';
import '../../common_barrel.dart';

class TopImageSectionWidget extends StatelessWidget {
  const TopImageSectionWidget({
    super.key,
    required this.imagePath,
    this.height = 280,
  });

  final String imagePath;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        imagePath,
        height: height,
        // fit: BoxFit.cover,
      ),
    );
  }
}

class TopHeadingTitleText extends StatelessWidget {
  const TopHeadingTitleText({
    super.key,
    required this.text,
    this.padding,
    this.maxLine,
    this.fontSize,
  });

  final String text;
  final EdgeInsets? padding;
  final int? maxLine;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        text,
        maxLines: maxLine,
        style: context.headline?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}

class SubTitleTextWidget extends StatelessWidget {
  const SubTitleTextWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.title?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}

class InfoTextWidget extends StatelessWidget {
  const InfoTextWidget({Key? key, this.padding, required this.infoText}) : super(key: key);

  final String infoText;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? defaultPaddingHorizontal,
      child: Text(
        infoText,
        style: context.body?.copyWith(color: AppTheme.caption),
        textAlign: TextAlign.center,
      ),
    );
  }
}
