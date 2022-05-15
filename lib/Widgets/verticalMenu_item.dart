import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Constants/Controllers.dart';
import '../Constants/Style.dart';
import 'StylishText.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final Function? ontap;
  const VerticalMenuItem({Key? key, required this.itemName, this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    width: 3,
                    height: 72,
                    color: dark,
                  ),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                ),
                Expanded(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
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
                ))
              ],
            ),
          )),
    );
  }
}
