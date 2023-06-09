import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelling_app/core/app_layout.dart';
import 'package:travelling_app/core/colors.dart';
import 'package:travelling_app/core/textstyle.dart';

import 'package:travelling_app/pages/widgets/column_text.dart';
import 'package:travelling_app/pages/widgets/layout_builder_widget.dart';
import 'package:travelling_app/pages/widgets/ticket_tabs.dart';
import 'package:travelling_app/pages/widgets/ticket_view.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Stack(
          children: [
            ListView(
              physics:const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(20),
                horizontal: AppLayout.getWidth(20),
              ),
              children: [
                Gap(AppLayout.getHeight(40)),
                const Text(
                  "Tickets",
                  style: headLineStyle1,
                ),
                Gap(AppLayout.getHeight(20)),
                // we have to use ticket tab reused widgets
                const TicketTabs(
                    firstTitle: "Upcoming", secondTitle: "Previous"),
                // create ticket view details

                //reuse the ticket view
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                  child: const TicketView(
                    leftCountryCode: "NYC",
                    rightCountryCode: "LDN",
                    leftCountryName: "New York",
                    rightCountryName: "London",
                    travellingHours: "16H 15M",
                    date: "9Apr",
                    departureTime: "09:46AM",
                    number: "56",
                    isColors: true,
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 16),
                  color: kWhiteColor,
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(15),
                      horizontal: AppLayout.getWidth(15)),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ColumnText(
                            columnCross: CrossAxisAlignment.start,
                            downText: "Passenger",
                            topText: "Dashboard",
                          ),
                          ColumnText(
                            columnCross: CrossAxisAlignment.end,
                            downText: "5211 87614",
                            topText: "Passport",
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const LayoutBuilderWidget(
                        sections: 15,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ColumnText(
                            columnCross: CrossAxisAlignment.start,
                            downText: "Number of E-ticket",
                            topText: "B4578 487",
                          ),
                          ColumnText(
                            columnCross: CrossAxisAlignment.end,
                            downText: "Booking code",
                            topText: "B2SG485",
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const LayoutBuilderWidget(
                        sections: 15,
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/visa1.png',
                                    width: 40,
                                  ),
                                  const Text("  ***255 ***356")
                                ],
                              ),
                              Text(
                                "Payment method",
                                style: headLineStyle3,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "\$249.99",
                                style:
                                    headLineStyle3.copyWith(color: kBlackColor),
                              ),
                              Gap(AppLayout.getHeight(10)),
                              Text(
                                "Price",
                                style: headLineStyle4,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 1,
                ),
                // Gap(AppLayout.getHeight(20)),
                //put the barcode
                Container(
                  margin: EdgeInsets.only(
                      right: AppLayout.getHeight(16),
                      left: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                        bottomRight: Radius.circular(AppLayout.getHeight(21)),
                      )),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(20),
                        vertical: AppLayout.getHeight(20)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BarcodeWidget(
                        drawText: false,
                        barcode: Barcode.code128(),
                        data: "https://github.com/abdullafalu",
                        color: kBlackColor,
                        width: double.infinity,
                        height: 70,
                      ),
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Container(
                  margin: EdgeInsets.only(left: AppLayout.getHeight(16)),
                  child: const TicketView(
                    leftCountryCode: "NYC",
                    rightCountryCode: "LDN",
                    leftCountryName: "New York",
                    rightCountryName: "London",
                    travellingHours: "16H 15M",
                    date: "9Apr",
                    departureTime: "09:46AM",
                    number: "56",
                  ),
                ),
              ],
            ),
            Positioned(
              top: 300,
              child: Container(
                margin: EdgeInsets.only(left: AppLayout.getHeight(18)),
                padding: EdgeInsets.all(AppLayout.getHeight(2)),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: kBlackColor, width: 2)),
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: kBlackColor,
                ),
              ),
            ),
            Positioned(
              top: 300,
              left: 374,
              child: Container(
                margin: EdgeInsets.only(right: AppLayout.getHeight(18)),
                padding: EdgeInsets.all(AppLayout.getHeight(2)),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: kBlackColor, width: 2)),
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: kBlackColor,
                ),
              ),
            ),
          ],
        ));
  }
}
