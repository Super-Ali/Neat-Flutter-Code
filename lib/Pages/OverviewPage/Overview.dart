import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/Constants/Controllers.dart';
import 'package:web_dashboard/Constants/Style.dart';
import 'package:web_dashboard/Helpers/Responsivness.dart';
import 'package:web_dashboard/Pages/OverviewPage/widgets/AvailableDrivers.dart';
import 'package:web_dashboard/Pages/OverviewPage/widgets/OverviewCard_Large.dart';
import 'package:web_dashboard/Pages/OverviewPage/widgets/OverviewCard_medium.dart';
import 'package:web_dashboard/Pages/OverviewPage/widgets/OverviewCard_small.dart';
import 'package:web_dashboard/Pages/OverviewPage/widgets/RevenueSection_Large.dart';
import 'package:web_dashboard/Pages/OverviewPage/widgets/RevenueSection_Small.dart';
import 'package:web_dashboard/Widgets/StylishText.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.only(
          top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6,
        ),
        child: Obx(
          () => Row(
            children: [
              StylishText(
                text: menuController.activeItem.value,
                size: 24,
                color: dark,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
      Expanded(
          child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            OverviewCardSmallScreen()
          else if (ResponsiveWidget.isMediumScreen(context))
            if (ResponsiveWidget.isCustomSize(context))
              OverviewCardMediumScreen()
            else
              OverviewCardsLargeScreen()
          else
            OverviewCardsLargeScreen(),
          if (ResponsiveWidget.isSmallScreen(context))
            RevenueSectionSmall()
          else
            RevenueSectionLarge(),
          AvailableDrivers()
        ],
      ))
    ]);
  }
}
