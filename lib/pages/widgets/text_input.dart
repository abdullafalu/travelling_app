
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/colors.dart';

class TextInputCupertino extends StatelessWidget {
  const TextInputCupertino({super.key, required this.hintText, required this.icons});
  final String hintText;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      placeholder: hintText,style:const TextStyle(color: kBlackColor,fontWeight: FontWeight.bold),
      
      prefix:  Row(
        children: [
        const  Gap(10),
          Icon(icons,color: Colors.grey.shade300 ,),
        ],
      ),
      decoration: BoxDecoration(
          color: kWhiteColor, borderRadius: BorderRadius.circular(12)),
    );
  }
}
