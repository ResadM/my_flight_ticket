import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_flight_ticket/util/app_layout.dart';
import 'package:my_flight_ticket/util/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(15),
          vertical: AppLayout.getHeight(17)),
      margin: EdgeInsets.only(right: AppLayout.getHeight(17)),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500, blurRadius: 2, spreadRadius: 1)
          ]),
      child: Column(
        children: [
          Container(
            height: AppLayout.getHeight(180),
            //margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"))),
          ),
          Gap(AppLayout.getHeight(15)),
          Text(
            "${hotel['place']}",
            textAlign: TextAlign.start,
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          Gap(AppLayout.getHeight(2)),
          Text(
            "${hotel['destination']}",
            textAlign: TextAlign.start,
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          Gap(AppLayout.getHeight(2)),
          Text(
            "\$ ${hotel['price']} per night",
            textAlign: TextAlign.start,
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
          )
        ],
      ),
    );
  }
}
