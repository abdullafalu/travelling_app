import 'package:flutter/cupertino.dart';

import '../../core/colors.dart';
import '../../core/textstyle.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.bigText, required this.smallText});
  final String bigText;
  final String smallText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          bigText,
          style: headLineStyle2,
        ),
        Text(
          smallText,
          style: textStyle.copyWith(color: primaryColor),
        )
      ],
    );
  }
}
