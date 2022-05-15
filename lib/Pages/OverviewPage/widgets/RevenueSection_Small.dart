import 'package:flutter/material.dart';

import '../../../Constants/Style.dart';
import '../../../Widgets/StylishText.dart';
import 'BarChart.dart';
import 'RevenueInfo.dart';

class RevenueSectionSmall extends StatelessWidget {
  const RevenueSectionSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 6),
                color: mediumLight.withOpacity(.1),
                blurRadius: 12)
          ],
          border: Border.all(color: mediumLight, width: .5)),
      child: Column(
        children: [
          Container(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                StylishText(
                  text: "Revenue Chart",
                  size: 20,
                  fontWeight: FontWeight.bold,
                  color: grey,
                ),
                Container(
                  width: 600,
                  height: 200,
                  child: SimpleBarChart.withSampleData(),
                )
              ],
            ),
          ),
          Container(
            width: 120,
            height: 1,
            color: mediumLight,
          ),
          Container(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    RevenueInfo(title: "Today's Revenue", amount: "23"),
                    RevenueInfo(title: "Last 7 Days", amount: "150"),
                  ],
                ),
                SizedBox(
                  height: 23,
                ),
                Row(
                  children: [
                    RevenueInfo(title: "Last 30 Days", amount: "1,203"),
                    RevenueInfo(title: "Last 12 Months", amount: "3,234"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
