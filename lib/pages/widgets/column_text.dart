import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/app_layout.dart';
import '../../core/colors.dart';
import '../../core/textstyle.dart';

class ColumnText extends StatelessWidget {
  final String topText;
  final String downText;
  final bool? isColor;
  final CrossAxisAlignment columnCross;
  const ColumnText({
    super.key,
    required this.topText,
    required this.downText, required this.columnCross, this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: columnCross,
      children: [
        Text(
          topText,
          style: headLineStyle3.copyWith(color:isColor==true? kWhiteColor:kBlackColor),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          downText,
          style: headLineStyle4.copyWith(color:isColor==true? kWhiteColor:lightGrey),
        ),
      ],
    );
  }
}
