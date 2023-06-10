import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelling_app/core/app_layout.dart';
import 'package:travelling_app/core/colors.dart';
import 'package:travelling_app/core/textstyle.dart';
import 'package:travelling_app/pages/widgets/column_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(20),
          horizontal: AppLayout.getWidth(20),
        ),
        physics: const BouncingScrollPhysics(),
        children: [
          Gap(AppLayout.getHeight(40)),
          // starting point from top
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(10),
                  ),
                  color: kWhiteColor,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/flight.png"),
                  ),
                ),
              ),
              Gap(AppLayout.getWidth(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Book Tickets",
                    style: headLineStyle1,
                  ),
                  Gap(AppLayout.getWidth(2)),
                  Text(
                    "New-York",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(AppLayout.getWidth(8)),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(3),
                      horizontal: AppLayout.getHeight(3),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(AppLayout.getHeight(100))),
                      color: const Color(0xfffef4f3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff526799),
                          ),
                          child: const Icon(
                            FluentIcons.shield_12_filled,
                            size: 15,
                            color: kWhiteColor,
                          ),
                        ),
                        Gap(AppLayout.getHeight(10)),
                        const Text(
                          "Premium Status",
                          style: TextStyle(
                            color: Color(0xff526799),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              const Column(
                children: [
                  Text(
                    "Edit",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                        fontSize: 16),
                  )
                ],
              )
            ],
          ),
          //first section almost completed
          //then start the secod section
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(10)),
          Stack(
            children: [
              //second section container started from here
              Container(
                width: double.infinity,
                height: AppLayout.getHeight(90),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: primaryColor),
              ),
              Positioned(
                right: -40,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18,
                      color: const Color.fromARGB(255, 34, 6, 119),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // we have start the data inside of the container
                   const CircleAvatar(
                      radius: 25,
                      backgroundColor: kWhiteColor,
                      child: Icon(
                        FluentIcons.lightbulb_16_filled,
                        color: primaryColor,
                        size: 30,
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "You have got a new award",
                          style: headLineStyle2.copyWith(color: kWhiteColor,fontSize: 20),
                        ),
                        Text(
                          "You have 65 flights year",
                          style: headLineStyle3.copyWith(color:kWhiteColor.withOpacity(0.9),fontSize: 14,),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          const Text(
            "Accumulated miles",
            style: headLineStyle2,
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(10)),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(AppLayout.getHeight(20),),),
              boxShadow: [
                BoxShadow(color: Colors.grey.shade300,blurRadius: 10,spreadRadius:10),
              ]
            ),
            margin: EdgeInsets.only(left: AppLayout.getHeight(10),right: AppLayout.getHeight(10),),
            child: Column(
              children: [
                const Text(
                  "2548916",
                  style: TextStyle(
                    fontSize: 45,
                    color: kBlackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accured",
                      style: headLineStyle4,
                    ),
                    Text(
                      "June 9 2023",
                      style: headLineStyle4,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
               const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnText(
                      topText: "23 042",
                      downText: "Miles",
                      columnCross: CrossAxisAlignment.start,
                    ),
                    ColumnText(
                      topText: "Airline CO",
                      downText: "Recived from",
                      columnCross: CrossAxisAlignment.end,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnText(
                      topText: "24",
                      downText: "Miles",
                      columnCross: CrossAxisAlignment.start,
                    ),
                    ColumnText(
                      topText: "McDonald's",
                      downText: "Recived from",
                      columnCross: CrossAxisAlignment.end,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnText(
                      topText: "256 478",
                      downText: "Miles",
                      columnCross: CrossAxisAlignment.start,
                    ),
                    ColumnText(
                      topText: "Peter",
                      downText: "Recived from",
                      columnCross: CrossAxisAlignment.end,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Center(
                  child: Text("How to get more miles",style: headLineStyle3.copyWith(color: primaryColor),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
