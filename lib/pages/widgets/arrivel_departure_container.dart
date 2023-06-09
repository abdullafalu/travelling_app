import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/app_layout.dart';
import '../../core/colors.dart';
import '../../core/textstyle.dart';

class ArrivelDepartureContainer extends StatelessWidget {
  const ArrivelDepartureContainer({super.key, required this.icons, required this.title});
  final IconData icons;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(12),
          vertical: AppLayout.getHeight(10)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
        color: kWhiteColor,
      ),
      child: Row(
        children: [
          Icon(
            icons,
            color: kBlackColor,
          ),
          Gap(AppLayout.getHeight(15)),
          Text(
            title,
            style: textStyle.copyWith(color: Colors.grey),
          ),
           
        ],
      ),
    );
  }
}
