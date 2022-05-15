import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/Constants/Controllers.dart';
import 'package:web_dashboard/Constants/Style.dart';
import 'package:web_dashboard/Controllers/Menu_Controller.dart';
import 'package:web_dashboard/Widgets/StylishText.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function? ontap;
  const HorizontalMenuItem({Key? key, required this.itemName, this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => ontap!(),
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover('not hovering');
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemName)
                ? mediumLight.withOpacity(.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                  visible: menuController.isHovering(itemName) ||
                      menuController.isActive(itemName),
                  child: Container(
                    width: 6,
                    height: 40,
                    color: dark,
                  ),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                ),
                SizedBox(
                  width: width / 80,
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: menuController.returnIconFor(itemName),
                ),
                if (!menuController.isActive(itemName))
                  Flexible(
                    child: StylishText(
                      text: itemName,
                      color: menuController.isHovering(itemName)
                          ? dark
                          : mediumLight,
                    ),
                  )
                else
                  Flexible(
                      child: StylishText(
                    text: itemName,
                    color: dark,
                    size: 18,
                    fontWeight: FontWeight.bold,
                  ))
              ],
            ),
          )),
    );
  }
}
