import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelling_app/core/app_layout.dart';
import 'package:travelling_app/core/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Gap(AppLayout.getHeight(20)),
          // starting point from top
          Row(
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(10),
                  ),
                  color: kWhiteColor,
                  image:const DecorationImage(
                    image: AssetImage("assets/images/flight.png"),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
