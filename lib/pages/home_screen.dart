import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelling_app/core/app_info_list.dart';
import 'package:travelling_app/core/colors.dart';
import 'package:travelling_app/pages/widgets/app_double_text.dart';
import 'package:travelling_app/pages/widgets/hotel_view_card.dart';
import 'package:travelling_app/pages/widgets/ticket_view.dart';

import '../core/textstyle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good morning",
                            style: headLineStyle3,
                          ),
                          const Gap(5),
                          const Text(
                            "Book tickets",
                            style: headLineStyle1,
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/images.jpg"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(25),
                  CupertinoTextField(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    placeholder: "Search",
                    prefix: const Row(
                      children: [
                        Gap(10),
                        Icon(FluentIcons.search_12_regular),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  const Gap(40),
                  const AppDoubleText(bigText: "Upcoming Flights", smallText: "view all"),
                  const Gap(15),
                  const SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        TicketView(
                          leftCountryCode: "NYC",
                          rightCountryCode: "LDN",
                          leftCountryName: "New York",
                          rightCountryName: "London",
                          travellingHours: "14H 45M",
                          date: "9 APR",
                          departureTime: "04:30 AM",
                          number: "78",
                        ),
                        TicketView(
                          leftCountryCode: "IND",
                          rightCountryCode: "DXB",
                          leftCountryName: "India",
                          rightCountryName: "Dubai",
                          travellingHours: "3H 45M",
                          date: "16 SEP",
                          departureTime: "06:20 AM",
                          number: "13",
                        ),
                        TicketView(
                          leftCountryCode: "PAK",
                          rightCountryCode: "IND",
                          leftCountryName: "Pakistan",
                          rightCountryName: "India",
                          travellingHours: "3H 25M",
                          date: "8 SEP",
                          departureTime: "01:20 AM",
                          number: "19",
                        ),
                        TicketView(
                          leftCountryCode: "KSA",
                          rightCountryCode: "SHJ",
                          leftCountryName: "Qatar",
                          rightCountryName: "Sharjah",
                          travellingHours: "3H 05M",
                          date: "9 SEP",
                          departureTime: "07:20 AM",
                          number: "33",
                        ),
                      ],
                    ),
                  ),
                  const Gap(15),
                 const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 4),
                    child: AppDoubleText(bigText: "Hotels", smallText: "View all")
                  ),

                  //hotel view card starting......
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Row(
                        children: hotelLists
                            .map((singleHotel) =>
                                HotelViewCard(hotel: singleHotel))
                            .toList(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
