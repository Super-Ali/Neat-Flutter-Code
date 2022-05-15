import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/Constants/Controllers.dart';
import 'package:web_dashboard/Constants/Style.dart';
import 'package:web_dashboard/Helpers/Responsivness.dart';
import 'package:web_dashboard/Pages/ClientsPage/widgets/ClientsTable.dart';
import 'package:web_dashboard/Widgets/StylishText.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.only(
            top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6, left: 10),
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
        children: [ClientsTable()],
      ))
    ]);
  }
}
