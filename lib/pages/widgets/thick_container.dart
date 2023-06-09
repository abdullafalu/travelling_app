import 'package:flutter/material.dart';
import 'package:travelling_app/core/colors.dart';

class ThickContainer extends StatelessWidget {
  const ThickContainer({super.key, this.isColor});
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 2.4, color: isColor == null ? kWhiteColor : primaryColor),
      ),
    );
  }
}
