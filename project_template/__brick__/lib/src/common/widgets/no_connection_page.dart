import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../common_barrel.dart';
import 'common/common_widgets.dart';

class NoInternetConnectionPage extends StatelessWidget {
  const NoInternetConnectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: defaultPaddingHalfAll,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TopImageSectionWidget(imagePath: ImagePaths.noConnection),
            gapH24,
            const TopHeadingTitleText(text: 'Oops ....'),
            gapH24,
            const InfoTextWidget(infoText: 'There is a connection error. Please check your internet and try again.'),
            gapH32,
            Padding(
              padding: defaultPaddingAll,
              child: PrimaryButton(
                text: 'Try Again',
                onPressed: () {
                  // Navigator.of(context).pushReplacementNamed(ScreenPaths.home.name);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
