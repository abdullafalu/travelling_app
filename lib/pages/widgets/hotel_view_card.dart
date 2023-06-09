import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelling_app/core/app_layout.dart';
import 'package:travelling_app/core/colors.dart';
import 'package:travelling_app/core/textstyle.dart';

class HotelViewCard extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelViewCard({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 15,
        top: 8,
      ),
      width: MediaQuery.of(context).size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21),
          color: primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(10),
              image:  DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}.jpg"
                ),
              ),
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: headLineStyle2.copyWith(
              color: kakiColor,
            ),
          ),
          const Gap(5),
          Text(
            hotel['place'],
            style: headLineStyle3.copyWith(
              color: kWhiteColor,
            ),
          ),
          const Gap(20),
          Text(
            "\$${hotel['price']}/night",
            style: headLineStyle1.copyWith(
              color: kakiColor,
            ),
          )
        ],
      ),
    );
  }
}
