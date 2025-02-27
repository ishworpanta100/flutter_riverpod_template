import 'package:flutter/cupertino.dart';

class AppPadding {
  static const double defaultPaddingHalf = 8.0;
  static const double defaultPadding = 16.0;
  static const double defaultPaddingDouble = 32.0;
}

EdgeInsets get defaultPaddingAll => const EdgeInsets.all(AppPadding.defaultPadding);
EdgeInsets get defaultPaddingHalfAll => const EdgeInsets.all(AppPadding.defaultPaddingHalf);
EdgeInsets get defaultPaddingDoubleAll => const EdgeInsets.all(AppPadding.defaultPaddingDouble);

EdgeInsets get defaultPaddingHorizontal => const EdgeInsets.symmetric(horizontal: AppPadding.defaultPadding);
EdgeInsets get defaultPaddingHalfHorizontal => const EdgeInsets.symmetric(horizontal: AppPadding.defaultPaddingHalf);
EdgeInsets get defaultPaddingDoubleHorizontal => const EdgeInsets.symmetric(horizontal: AppPadding.defaultPaddingDouble);

EdgeInsets get defaultPaddingVertical => const EdgeInsets.symmetric(vertical: AppPadding.defaultPadding);
EdgeInsets get defaultPaddingHalfVertical => const EdgeInsets.symmetric(vertical: AppPadding.defaultPaddingHalf);
EdgeInsets get defaultPaddingDoubleVertical => const EdgeInsets.symmetric(vertical: AppPadding.defaultPaddingDouble);

EdgeInsets get defaultPaddingSymmetric => const EdgeInsets.symmetric(
      horizontal: AppPadding.defaultPadding,
      vertical: AppPadding.defaultPadding,
    );
EdgeInsets get defaultPaddingHalfSymmetric => const EdgeInsets.symmetric(
      horizontal: AppPadding.defaultPaddingHalf,
      vertical: AppPadding.defaultPaddingHalf,
    );
EdgeInsets get defaultPaddingDoubleSymmetric => const EdgeInsets.symmetric(
      horizontal: AppPadding.defaultPaddingDouble,
      vertical: AppPadding.defaultPaddingDouble,
    );
