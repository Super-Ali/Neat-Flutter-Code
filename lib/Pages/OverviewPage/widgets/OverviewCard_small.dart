import 'package:flutter/material.dart';
import 'package:web_dashboard/Pages/OverviewPage/widgets/InfoCard_small.dart';

import 'InfoCard.dart';

class OverviewCardSmallScreen extends StatelessWidget {
  const OverviewCardSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Rides In Progress",
            value: "7",
            onTap: () {},
            topColor: Colors.blue,
          ),
          SizedBox(
            width: width / 64,
            height: 10,
          ),
          InfoCardSmall(
            title: "Packages Delivered",
            value: "17",
            onTap: () {},
            topColor: Colors.lightGreen,
          ),
          SizedBox(
            width: width / 64,
            height: 10,
          ),
          InfoCardSmall(
            title: "Cancelled delivery",
            value: "3",
            onTap: () {},
            topColor: Colors.redAccent,
          ),
          SizedBox(
            width: width / 64,
            height: 10,
          ),
          InfoCardSmall(
            title: "Scheduled Delivries",
            value: "3",
            onTap: () {},
            topColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
