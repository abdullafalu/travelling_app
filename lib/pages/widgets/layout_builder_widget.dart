import 'package:flutter/material.dart';

import '../../core/colors.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({super.key, this.isColors, required this.sections});
  final bool? isColors;
  final int sections;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constraints.constrainWidth() / sections).floor(),
            (index) => SizedBox(
              height: 1,
              width: 3,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isColors == null ? lightGrey : kWhiteColor,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
