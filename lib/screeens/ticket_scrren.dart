import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:my_flight_ticket/screeens/ticket_view.dart';
import 'package:my_flight_ticket/util/app_layout.dart';
import 'package:my_flight_ticket/util/app_styles.dart';
import 'package:my_flight_ticket/widgets/dash_seperator.dart';

import '../widgets/thick_container.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(20),
                  vertical: AppLayout.getHeight(20)),
              children: [
                Gap(AppLayout.getHeight(40)),
                Text(
                  "Tickets",
                  style: Styles.headLineStyle1
                      .copyWith(fontSize: AppLayout.getWidth(35)),
                ),
                Gap(AppLayout.getHeight(20)),
                Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      color: const Color(0xFFF4F6FD)),
                  child: Row(
                    children: [
                      Container(
                        width: size.width * .44,
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(7)),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft:
                                    Radius.circular(AppLayout.getHeight(20)),
                                bottomLeft:
                                    Radius.circular(AppLayout.getHeight(20)))),
                        child: const Text(
                          "Airline tickets",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: size.width * .44,
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(7)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight:
                                    Radius.circular(AppLayout.getHeight(20)),
                                bottomRight:
                                    Radius.circular(AppLayout.getHeight(20)))),
                        child: const Text(
                          "Hotels",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                SizedBox(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(20),
                        vertical: AppLayout.getHeight(20)),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(20)),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft:
                                      Radius.circular(AppLayout.getHeight(21)),
                                  topRight: Radius.circular(
                                      AppLayout.getHeight(21)))),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "NYC",
                                    style: Styles.headLineStyle3,
                                  ),
                                  const Spacer(),
                                  Container(
                                    padding: const EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            width: 2.5, color: Colors.blue)),
                                  ),
                                  // const Text(
                                  //   "----",
                                  //   style: TextStyle(color: Colors.white),
                                  // ),
                                  Expanded(
                                      child: Stack(
                                    children: [
                                      SizedBox(
                                        height: AppLayout.getHeight(24),
                                        child: LayoutBuilder(
                                          builder: (BuildContext context,
                                              BoxConstraints constraints) {
                                            return Flex(
                                              direction: Axis.horizontal,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              mainAxisSize: MainAxisSize.max,
                                              children: List.generate(
                                                  (constraints.constrainWidth() /
                                                          AppLayout.getWidth(6))
                                                      .floor(),
                                                  (index) => SizedBox(
                                                        width:
                                                            AppLayout.getWidth(
                                                                3),
                                                        height:
                                                            AppLayout.getHeight(
                                                                1),
                                                        child: const DecoratedBox(
                                                            decoration:
                                                                BoxDecoration(
                                                                    color: Colors
                                                                        .blue)),
                                                      )),
                                            );
                                          },
                                        ),
                                      ),
                                      Center(
                                        child: Transform.rotate(
                                          angle: 1.5,
                                          child: const Icon(
                                            Icons.local_airport_rounded,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),

                                  Container(
                                    padding: const EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            width: 2.5, color: Colors.blue)),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "LDN",
                                    style: Styles.headLineStyle3,
                                  )
                                ],
                              ),
                              Gap(AppLayout.getHeight(3)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: AppLayout.getWidth(100),
                                    child: Text(
                                      "New-York",
                                      style: Styles.headLineStyle3,
                                    ),
                                  ),
                                  Text(
                                    "8H 30M",
                                    style: Styles.headLineStyle2,
                                  ),
                                  SizedBox(
                                    width: AppLayout.getWidth(100),
                                    child: Text(
                                      "London",
                                      textAlign: TextAlign.end,
                                      style: Styles.headLineStyle3,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Gap(AppLayout.getHeight(10)),
                        const DashSeperator(),
                        Gap(AppLayout.getHeight(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Flutter Dash",
                                  style: Styles.headLineStyle2,
                                ),
                                Gap(AppLayout.getHeight(5)),
                                Text(
                                  "Passengers",
                                  style: Styles.headLineStyle3,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "5221 478566",
                                  style: Styles.headLineStyle2,
                                ),
                                Gap(AppLayout.getHeight(5)),
                                Text(
                                  "Passport",
                                  style: Styles.headLineStyle3,
                                ),
                              ],
                            )
                          ],
                        ),
                        Gap(AppLayout.getHeight(10)),
                        const DashSeperator(),
                        Gap(AppLayout.getHeight(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "0055 444 77147",
                                  style: Styles.headLineStyle2,
                                ),
                                Gap(AppLayout.getHeight(5)),
                                Text(
                                  "Number of E-Ticket",
                                  style: Styles.headLineStyle3,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "B2SG28",
                                  style: Styles.headLineStyle2,
                                ),
                                Gap(AppLayout.getHeight(5)),
                                Text(
                                  "Booking code",
                                  style: Styles.headLineStyle3,
                                ),
                              ],
                            )
                          ],
                        ),
                        Gap(AppLayout.getHeight(10)),
                        const DashSeperator(),
                        Gap(AppLayout.getHeight(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    // Container(
                                    //   height: AppLayout.getHeight(20),
                                    //   width: AppLayout.getWidth(50),
                                    //   //margin: const EdgeInsets.only(right: 16),
                                    //   decoration: const BoxDecoration(
                                    //       image: DecorationImage(
                                    //           fit: BoxFit.fill,
                                    //           image: AssetImage(
                                    //               "assets/images/visa.png"))),
                                    // ),
                                    Image.asset(
                                      "assets/images/visa.png",
                                      scale: 11,
                                    ),
                                    Text(
                                      " *** 2456",
                                      style: Styles.headLineStyle2,
                                    )
                                  ],
                                ),
                                Gap(AppLayout.getHeight(5)),
                                Text(
                                  "Payment method",
                                  style: Styles.headLineStyle3,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$250.00",
                                  style: Styles.headLineStyle3,
                                ),
                                Gap(AppLayout.getHeight(5)),
                                Text(
                                  "Price",
                                  style: Styles.headLineStyle3,
                                ),
                              ],
                            )
                          ],
                        ),
                        Gap(AppLayout.getHeight(40)),
                        BarcodeWidget(
                          data: 'My Flight Ticket - Rashad Mammadov',
                          barcode: Barcode.code128(),
                          width: double.infinity,
                          height: 70,
                          drawText: false,
                        )
                      ],
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                const TicketView(
                  ticketMargin: 0,
                )
              ],
            ),
            Positioned(
              left: AppLayout.getHeight(10),
              top: AppLayout.getHeight(255),
              child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(3)),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              right: AppLayout.getHeight(10),
              top: AppLayout.getHeight(255),
              child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(3)),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            )
          ],
        ));
  }
}
