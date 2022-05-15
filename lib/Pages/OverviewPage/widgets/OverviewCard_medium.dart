import 'package:flutter/material.dart';

import 'InfoCard.dart';

class OverviewCardMediumScreen extends StatelessWidget {
  const OverviewCardMediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Row(
        children: [
          InfoCard(
            title: "Rides In Progress",
            value: "7",
            onTap: () {},
            topColor: Colors.blue,
          ),
          SizedBox(
            width: width / 64,
          ),
          InfoCard(
            title: "Packages Delivered",
            value: "17",
            onTap: () {},
            topColor: Colors.lightGreen,
          ),
        ],
      ),
      SizedBox(
        height: 16,
      ),
      Row(
        children: [
          InfoCard(
            title: "Cancelled delivery",
            value: "3",
            onTap: () {},
            topColor: Colors.redAccent,
          ),
          SizedBox(
            width: width / 64,
          ),
          InfoCard(
            title: "Scheduled Delivries",
            value: "3",
            onTap: () {},
            topColor: Colors.blue,
          ),
        ],
      )
    ]);
  }
}
