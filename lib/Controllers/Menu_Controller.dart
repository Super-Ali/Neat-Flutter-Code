import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/Constants/Style.dart';
import 'package:web_dashboard/Routers/Routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = OverViewPageDisplayName.obs;
  var hoverItem = ''.obs;

  changeActiveitemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;
  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverViewPageDisplayName:
        return customIcon(FontAwesomeIcons.rankingStar, itemName);
      case DriverPageDisplayName:
        return customIcon(FontAwesomeIcons.car, itemName);
      case ClientsPageDisplayName:
        return customIcon(FontAwesomeIcons.peopleGroup, itemName);
      case AuthenticationPageDisplayName:
        return customIcon(FontAwesomeIcons.doorClosed, itemName);

      default:
        return customIcon(FontAwesomeIcons.doorClosed, itemName);
    }
  }

  Widget customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return FaIcon(icon, size: 18, color: dark);
    }

    return FaIcon(icon,
        color: isHovering(itemName) ? dark : mediumLight, size: 18);
  }
}
