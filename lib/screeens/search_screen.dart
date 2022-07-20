import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_flight_ticket/util/app_layout.dart';
import 'package:my_flight_ticket/util/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                color: const Color(0xFFF4F6FD)),
            child: Row(
              children: [
                Container(
                  width: size.width * .44,
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(20)),
                          bottomLeft:
                              Radius.circular(AppLayout.getHeight(20)))),
                  child: const Text(
                    "Airline tickets",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: size.width * .44,
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(20)),
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
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(10),
                horizontal: AppLayout.getHeight(5)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(7)),
                color: Colors.white),
            child: Row(children: [
              const Icon(
                Icons.flight_takeoff_rounded,
                color: Color(0xFFBFC2DF),
              ),
              Gap(AppLayout.getWidth(10)),
              Text(
                "Departure",
                style: Styles.textStyle,
              )
            ]),
          ),
          Gap(AppLayout.getHeight(10)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(10),
                horizontal: AppLayout.getHeight(5)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(7)),
                color: Colors.white),
            child: Row(children: [
              const Icon(
                Icons.flight_land_outlined,
                color: Color(0xFFBFC2DF),
              ),
              Gap(AppLayout.getWidth(10)),
              Text(
                "Arrival",
                style: Styles.textStyle,
              )
            ]),
          ),
          Gap(AppLayout.getHeight(10)),
          SizedBox(
              child: ElevatedButton(
            style: ElevatedButton.styleFrom(elevation: 2),
            onPressed: () {},
            child: Text(
              'Find Ticket',
              style: Styles.textStyle.copyWith(color: Colors.white),
            ),
          )),
          Gap(AppLayout.getHeight(10)),
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
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Column(children: [
                  Container(
                    width: size.width * 0.45,
                    //height: AppLayout.getHeight(350),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(15),
                        vertical: AppLayout.getHeight(17)),
                    margin: EdgeInsets.only(right: AppLayout.getHeight(17)),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: AppLayout.getHeight(180),
                          //margin: const EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(10)),
                              color: Styles.primaryColor,
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/sit.jpg"))),
                        ),
                        Gap(AppLayout.getHeight(15)),
                        Text(
                          "20% disount on business class tickets.",
                          style: Styles.headLineStyle2,
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.40,
                        height: AppLayout.getHeight(144),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWidth(15)),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getWidth(18)),
                            color: const Color(0xFF3AB8B8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: -40,
                          right: -45,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: const Color(0xFF189999)),
                                color: Colors.transparent),
                          )),
                    ],
                  ),
                  Gap(AppLayout.getHeight(6)),
                  Container(
                    width: size.width * 0.40,
                    height: AppLayout.getHeight(144),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getWidth(18)),
                        color: const Color.fromARGB(255, 132, 119, 225)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Test text",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
