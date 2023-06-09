import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelling_app/core/app_layout.dart';
import 'package:travelling_app/core/colors.dart';
import 'package:travelling_app/core/textstyle.dart';
import 'package:travelling_app/pages/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView(
      {super.key,
      required this.leftCountryCode,
      required this.rightCountryCode,
      required this.leftCountryName,
      required this.rightCountryName,
      required this.travellingHours,
      required this.date,
      required this.departureTime,
      required this.number});
  final String leftCountryCode;
  final String rightCountryCode;
  final String leftCountryName;
  final String rightCountryName;
  final String travellingHours;
  final String date;
  final String departureTime;
  final String number;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.2,
      height: AppLayout.getHeight(200),
      child: Container(
        margin:  EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            // this container for ticketview blue part
            Container(
              decoration:  BoxDecoration(
                color: ticketViewBlueColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding:  EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        leftCountryCode,
                        style: headLineStyle3.copyWith(color: kWhiteColor),
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) =>  SizedBox(
                                      width: AppLayout.getWidth(3),
                                      height: AppLayout.getHeight(1),
                                      child:const DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: kWhiteColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Center(
                              child: Transform.rotate(
                            angle: 1.5,
                            child: const Icon(
                              Icons.flight_sharp,
                              color: kWhiteColor,
                            ),
                          )),
                        ],
                      )),
                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        rightCountryCode,
                        style: headLineStyle3.copyWith(color: kWhiteColor),
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        leftCountryName,
                        style: headLineStyle4.copyWith(color: kWhiteColor),
                      ),
                      Text(
                        travellingHours,
                        style: headLineStyle3.copyWith(color: kWhiteColor),
                      ),
                      Text(
                        rightCountryName,
                        style: headLineStyle4.copyWith(color: kWhiteColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // this is for orange ticket container
            Container(
              color: orangeColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child:const DecoratedBox(
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => const SizedBox(
                                      height: 1,
                                      width: 3,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: kWhiteColor)),
                                    )),
                          );
                        },
                      ),
                    ),
                  ),
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child:const DecoratedBox(
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //last part of ticketview
            Container(
              decoration: const BoxDecoration(
                color: orangeColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.only(
                  top: 10, left: 16, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            date,
                            style: headLineStyle3.copyWith(color: kWhiteColor),
                          ),
                          const Gap(5),
                          Text(
                            "DATE",
                            style: headLineStyle4.copyWith(color: kWhiteColor),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            departureTime,
                            style: headLineStyle3.copyWith(color: kWhiteColor),
                          ),
                          const Gap(5),
                          Text(
                            "Departure time",
                            style: headLineStyle4.copyWith(color: kWhiteColor),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            number,
                            style: headLineStyle3.copyWith(color: kWhiteColor),
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style: headLineStyle4.copyWith(color: kWhiteColor),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
