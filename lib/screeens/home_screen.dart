import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_flight_ticket/screeens/hotel_screen.dart';
import 'package:my_flight_ticket/screeens/ticket_view.dart';
import 'package:my_flight_ticket/util/app_info_list.dart';
import 'package:my_flight_ticket/util/app_layout.dart';

import '../util/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: AppLayout.getHeight(20),
                  right: AppLayout.getHeight(20)),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning",
                            style: Styles.headLineStyle3,
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            "Book Tickets",
                            style: Styles.headLineStyle1,
                          ),
                        ],
                      ),
                      Container(
                        width: AppLayout.getWidth(50),
                        height: AppLayout.getHeight(50),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(10)),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/img_1.png"))),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(25)),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(10)),
                        color: const Color(0xFFF4F6FD)),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(12),
                        vertical: AppLayout.getHeight(12)),
                    child: Row(
                      children: [
                        const Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                        ),
                        Text(
                          "Search",
                          style: Styles.headLineStyle4,
                        )
                      ],
                    ),
                  ),
                  Gap(AppLayout.getHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Upcoming Flihghts",
                        style: Styles.headLineStyle2,
                      ),
                      InkWell(
                        onTap: () {
                          print("you clicked");
                        },
                        child: Text("View All",
                            style: Styles.textStyle.copyWith(
                              color: Styles.primaryColor,
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
              child: Row(
                children: List.generate(
                    10,
                    (index) => const TicketView(
                          ticketMargin: 16,
                        )),
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            Container(
              padding: EdgeInsets.only(
                  left: AppLayout.getHeight(16),
                  right: AppLayout.getHeight(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hotels",
                    style: Styles.headLineStyle2,
                  ),
                  InkWell(
                    onTap: () {
                      print("you clicked");
                    },
                    child: Text("View All",
                        style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                        )),
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
              child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: hotelList
                      .map((singleHotel) => HotelScreen(hotel: singleHotel))
                      .toList()),
            )
          ],
        ));
  }
}
