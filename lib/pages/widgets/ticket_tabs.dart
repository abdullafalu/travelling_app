import 'package:flutter/material.dart';

import '../../core/app_layout.dart';
import '../../core/colors.dart';
import '../../core/textstyle.dart';

class TicketTabs extends StatelessWidget {
  const TicketTabs({super.key, required this.firstTitle, required this.secondTitle});
  final String firstTitle;
  final String secondTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
        color: const Color(0xfff4f6fd),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: MediaQuery.of(context).size.width * .44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppLayout.getHeight(50))),
              color: kWhiteColor,
            ),
            child: Center(
              child: Text(
                firstTitle,
                style: headLineStyle4.copyWith(color: kBlackColor),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: MediaQuery.of(context).size.width * .43,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppLayout.getHeight(50))),
              color: Colors.transparent,
            ),
            child: Center(
              child: Text(
                secondTitle,
                style: headLineStyle4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
