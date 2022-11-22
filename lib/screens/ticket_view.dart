import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/app_layout.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF526799),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21), topRight: Radius.circular(21)),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'NYC',
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    const ThickContainer(),
                    Expanded(
                        child: Stack(children: [
                      SizedBox(
                        height: 24,
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() / 6).floor(),
                                  (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: const DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white)),
                                      )),
                            );
                          },
                        ),
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: 1.5,
                          child: Icon(
                            Icons.local_airport_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ])),
                    const ThickContainer(),
                    const Spacer(),
                    Text(
                      'LDN',
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'New-York',
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
