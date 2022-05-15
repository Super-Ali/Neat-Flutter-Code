import 'package:flutter/material.dart';
import 'package:web_dashboard/Helpers/Responsivness.dart';
import 'package:web_dashboard/Widgets/horizontalMenu_item.dart';
import 'package:web_dashboard/Widgets/verticalMenu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function? ontap;
  const SideMenuItem({Key? key, required this.itemName, this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context))
      return VerticalMenuItem(itemName: itemName, ontap: () => ontap!());

    return HorizontalMenuItem(itemName: itemName, ontap: () => ontap!());
  }
}
