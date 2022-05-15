import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/Constants/Controllers.dart';
import 'package:web_dashboard/Constants/Style.dart';
import 'package:web_dashboard/Helpers/Responsivness.dart';
import 'package:web_dashboard/Pages/AuthenticationPage/Authentication.dart';
import 'package:web_dashboard/Pages/ClientsPage/Clients.dart';
import 'package:web_dashboard/Routers/Routes.dart';
import 'package:web_dashboard/Widgets/StylishText.dart';
import 'package:web_dashboard/Widgets/sideMenu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    void onPressOp(itemName) {
      if (itemName == AuthenticationPageRoute) {
        // Go to Authentication Page
      }
      if (!menuController.isActive(itemName)) {
        menuController.changeActiveitemTo(itemName);
        if (ResponsiveWidget.isSmallScreen(context)) {
          Get.back();
          // Go to Item Name Route
        }
      }
    }

    return Container(
      color: Colors.blueAccent,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width / 48,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset(
                        "assets/icons/logoIcon.png",
                        width: 22,
                      ),
                    ),
                    Flexible(
                        child: StylishText(
                      text: 'DashBoard',
                      size: 20,
                      fontWeight: FontWeight.bold,
                      color: active,
                    )),
                    SizedBox(
                      width: width / 48,
                    )
                  ],
                ),
              ],
            ),
          Divider(
            color: mediumLight.withOpacity(.3),
          ),
          Column(
              mainAxisSize: MainAxisSize.min,
              children: SideMenuItems.map((item) => SideMenuItem(
                  itemName: item.name == AuthenticationPageRoute
                      ? "Log Out"
                      : item.name,
                  ontap: () {
                    if (item.route == AuthenticationPageRoute) {
                      Get.offAllNamed(AuthenticationPageRoute);
                      menuController
                          .changeActiveitemTo(OverViewPageDisplayName);
                    }
                    if (!menuController.isActive(item.name)) {
                      menuController.changeActiveitemTo(item.name);
                      if (ResponsiveWidget.isSmallScreen(context)) {
                        Get.back();
                      }
                      navigationController.navigateTo(item.route);
                    }
                  })).toList()),
        ],
      ),
    );
  }
}
