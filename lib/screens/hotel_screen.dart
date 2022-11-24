import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(15),
          vertical: AppLayout.getHeight(17)),
      margin: EdgeInsets.only(
          right: AppLayout.getHeight(17), top: AppLayout.getHeight(5)),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: AppLayout.getHeight(20),
              spreadRadius: AppLayout.getHeight(5)),
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: AppLayout.getHeight(180),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
              image: DecorationImage(
                  image: AssetImage("assets/images/${hotel['image']}"),
                  fit: BoxFit.cover)),
        ),
        const Gap(10),
        Text(
          hotel['place'],
          style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
        ),
        const Gap(5),
        Text(
          hotel['destination'],
          style: Styles.headLineStyle3.copyWith(color: Colors.white),
        ),
        const Gap(8),
        Text(
          '\$${hotel['price']}/night',
          style: Styles.headLineStyle3.copyWith(color: Styles.kakiColor),
        ),
      ]),
    );
  }
}
