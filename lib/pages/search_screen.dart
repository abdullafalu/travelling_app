import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelling_app/core/app_layout.dart';
import 'package:travelling_app/core/colors.dart';
import 'package:travelling_app/core/textstyle.dart';
import 'package:travelling_app/pages/widgets/app_double_text.dart';
import 'package:travelling_app/pages/widgets/arrivel_departure_container.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: const EdgeInsets.all(3.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
              color: const Color(0xfff4f6fd),
            ),
            child: Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  width: MediaQuery.of(context).size.width * .44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(50))),
                    color: kWhiteColor,
                  ),
                  child: Center(
                    child: Text(
                      "Airline tickets",
                      style: headLineStyle4.copyWith(color: kBlackColor),
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  width: MediaQuery.of(context).size.width * .44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      "Tickets",
                      style: headLineStyle4,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(25),
          const ArrivelDepartureContainer(
            icons: Icons.flight_takeoff_sharp,
            title: "Departure",
          ),
          const Gap(20),
          const ArrivelDepartureContainer(
            icons: Icons.flight_land_sharp,
            title: "Arrivel",
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            height: AppLayout.getHeight(55),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 55, 8, 223)),
            child: Center(
                child: Text(
              "Find ticket",
              style: textStyle.copyWith(color: kWhiteColor),
            )),
          ),
          Gap(AppLayout.getHeight(30)),
          const AppDoubleText(
            bigText: "Upcoming Flights",
            smallText: "View all",
          ),
          Gap(AppLayout.getHeight(10)),
          Row(
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: MediaQuery.of(context).size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(10),
                    horizontal: AppLayout.getWidth(10)),
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Column(
                  children: [
                    // put the images  inside the container
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg"),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(10)),
                    const Text(
                      "20% discount on the early booking of this flights, Don't miss out this chance",
                      style: headLineStyle2,
                    ),
                  ],
                ),
              ),
              // two container which is red and some color
              Column(
                children: [
                  //first red container
                  Container(
                    margin: EdgeInsets.only(
                      left: AppLayout.getHeight(15),
                    ),
                    height: AppLayout.getHeight(170),
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 13, 181, 219),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Discount\nfor survey",
                            style: headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: kWhiteColor,
                            ),
                          ),
                          Gap(AppLayout.getHeight(10)),
                          Text(
                            "Take the survey about your service and get discount",
                            style: headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: kWhiteColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(AppLayout.getHeight(15)),
                  // next last red  container
                  Container(
                    margin: EdgeInsets.only(left: AppLayout.getHeight(15)),
                    height: AppLayout.getHeight(210),
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: orangeColor,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
