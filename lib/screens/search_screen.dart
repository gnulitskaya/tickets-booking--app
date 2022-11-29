import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import '../widgets/view-all_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
            'What are\nyou looking for?',
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getHeight(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(children: [
                Container(
                  width: size.width * .44,
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(50)),
                      ),
                      color: Colors.white),
                  child: Center(child: Text('Airplane tickets')),
                ),
                Container(
                  width: size.width * .44,
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHeight(50)),
                      ),
                      color: Colors.transparent),
                  child: Center(child: Text('Hotels')),
                )
              ]),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                  color: const Color(0xFFF4F6FD)),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          AppIconText(
            text: 'Departure',
            icon: Icons.flight_takeoff_rounded,
          ),
          Gap(AppLayout.getHeight(20)),
          AppIconText(
            text: 'Arrival',
            icon: Icons.flight_land_rounded,
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(15),
                horizontal: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
                color: Colors.blue.shade700,
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10))),
            child: Center(
              child: Text(
                'Find tickets',
                style: Styles.textStyle
                    .copyWith(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const ViewAll(bigText: 'Upcoming Flights', smallText: 'View all'),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(12))),
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(15)),
                child: Column(children: [
                  Container(
                    height: AppLayout.getHeight(190),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/sit.jpg'))),
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Text(
                    '20% discount on the early booking of the flights. Don`t miss.',
                    style: Styles.headLineStyle2,
                  )
                ]),
              ),
              Column(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(200),
                    decoration: BoxDecoration(
                        color: Color(0xFF3AB8B8),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18))),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(18)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Discount \nfor survey',
                            style: Styles.headLineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Gap(AppLayout.getHeight(10)),
                          Text(
                            'Take the survery about our services and get discount',
                            style: Styles.headLineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 18,
                          color: Color(0xFF189999),
                        ),
                        color: Colors.transparent),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
