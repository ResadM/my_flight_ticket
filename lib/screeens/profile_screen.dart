import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:my_flight_ticket/util/app_layout.dart';
import 'package:my_flight_ticket/util/app_styles.dart';
import 'package:my_flight_ticket/widgets/dash_seperator.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            children: [
              Container(
                width: AppLayout.getWidth(86),
                height: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img_1.png"))),
              ),
              Gap(AppLayout.getWidth(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headLineStyle2,
                  ),
                  Text(
                    "New-York",
                    style: Styles.headLineStyle3,
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(5)),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getWidth(20)),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 31, 40, 90)),
                          child: const Icon(
                            Icons.shield,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getWidth(10)),
                        Text("Premium Staus",
                            style: Styles.textStyle.copyWith(fontSize: 13))
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Text(
                "Edit",
                style: Styles.textStyle,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          SizedBox(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: AppLayout.getHeight(90),
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(15),
                      horizontal: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getWidth(18)),
                      color: const Color.fromARGB(255, 2, 124, 237)),
                  child: Column(),
                ),
                Positioned(
                    top: -40,
                    right: -45,
                    child: Container(
                      padding: EdgeInsets.all(AppLayout.getHeight(30)),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 18,
                              color: const Color.fromARGB(255, 1, 86, 165)),
                          color: Colors.transparent),
                    )),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(25),
                      vertical: AppLayout.getHeight(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Color.fromARGB(255, 2, 124, 237),
                          size: 27,
                        ),
                      ),
                      Gap(AppLayout.getWidth(10)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You've got a new award",
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "You have 150 flights in a year",
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          Text(
            "Accumlated miles",
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(20)),
          Column(
            children: [
              Text(
                "192802",
                style: Styles.headLineStyle1.copyWith(fontSize: 45),
              )
            ],
          ),
          Gap(AppLayout.getHeight(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Miles accrued",
                style: Styles.headLineStyle3,
              ),
              Text(
                "20 July 2022",
                style: Styles.headLineStyle3,
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "23 042",
                    style: Styles.headLineStyle2,
                  ),
                  Text(
                    "Miles",
                    style: Styles.headLineStyle3,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Turkish Airlines",
                    style: Styles.headLineStyle2,
                  ),
                  Text(
                    "Receives from",
                    style: Styles.headLineStyle3,
                  ),
                ],
              )
            ],
          ),
          const DashSeperator(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "24",
                    style: Styles.headLineStyle2,
                  ),
                  Text(
                    "Miles",
                    style: Styles.headLineStyle3,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Buta Airlines",
                    style: Styles.headLineStyle2,
                  ),
                  Text(
                    "Receives from",
                    style: Styles.headLineStyle3,
                  ),
                ],
              )
            ],
          ),
          const DashSeperator(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "52 340",
                    style: Styles.headLineStyle2,
                  ),
                  Text(
                    "Miles",
                    style: Styles.headLineStyle3,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Azerbaijan Airlines",
                    style: Styles.headLineStyle2,
                  ),
                  Text(
                    "Receives from",
                    style: Styles.headLineStyle3,
                  ),
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Column(children: [
            Text("How to get more miles",
                style: Styles.textStyle.copyWith(color: Colors.blue))
          ])
        ],
      ),
    );
  }
}
