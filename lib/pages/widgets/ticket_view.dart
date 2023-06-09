import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelling_app/core/app_layout.dart';
import 'package:travelling_app/core/colors.dart';
import 'package:travelling_app/core/textstyle.dart';
import 'package:travelling_app/pages/widgets/thick_container.dart';

import 'column_text.dart';
import 'layout_builder_widget.dart';

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
      required this.number,
      this.isColors});
  final String leftCountryCode;
  final String rightCountryCode;
  final String leftCountryName;
  final String rightCountryName;
  final String travellingHours;
  final String date;
  final String departureTime;
  final String number;
  final bool? isColors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.2,
      height: AppLayout.getHeight(171),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            // this container for ticketview blue part
            Container(
              decoration: BoxDecoration(
                color: isColors == null ? ticketViewBlueColor : kWhiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        leftCountryCode,
                        style: headLineStyle3.copyWith(
                            color:
                                isColors == null ? kWhiteColor : kBlackColor),
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(
                        isColor: true,
                      ),
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
                                    (index) => SizedBox(
                                      width: AppLayout.getWidth(3),
                                      height: AppLayout.getHeight(1),
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: isColors == null
                                              ? kWhiteColor
                                              : lightGrey,
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
                            child: Icon(
                              Icons.flight_sharp,
                              color:
                                  isColors == null ? kWhiteColor : primaryColor,
                            ),
                          )),
                        ],
                      )),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(child: Container()),
                      Text(
                        rightCountryCode,
                        style: headLineStyle3.copyWith(
                            color:
                                isColors == null ? kWhiteColor : kBlackColor),
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        leftCountryName,
                        style: headLineStyle4.copyWith(
                            color: isColors == null ? kWhiteColor : lightGrey),
                      ),
                      Text(
                        travellingHours,
                        style: headLineStyle3.copyWith(
                            color:
                                isColors == null ? kWhiteColor : kBlackColor),
                      ),
                      Text(
                        rightCountryName,
                        style: headLineStyle4.copyWith(
                            color: isColors == null ? kWhiteColor : lightGrey),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // this is for orange ticket container
            Container(
              color: isColors == null ? orangeColor : kWhiteColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColors == null ? kWhiteColor : lightGrey,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                 const Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: LayoutBuilderWidget(
                          sections: 10,
                        )),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColors == null ? kWhiteColor : lightGrey,
                        borderRadius: const BorderRadius.only(
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
              decoration: BoxDecoration(
                color: isColors == null ? orangeColor : kWhiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColors == true ? 0 : 21),
                  bottomRight: Radius.circular(isColors == true ? 0 : 21),
                ),
              ),
              padding: const EdgeInsets.only(
                  top: 10, left: 16, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnText(
                        isColor: false,
                        downText: "Date",
                        topText: date,
                        columnCross: CrossAxisAlignment.start,
                      ),
                      ColumnText(
                        isColor: false,
                        topText: departureTime,
                        downText: "Departure",
                        columnCross: CrossAxisAlignment.center,
                      ),
                      ColumnText(
                          isColor: false,
                          topText: number,
                          downText: "Number",
                          columnCross: CrossAxisAlignment.end)
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
