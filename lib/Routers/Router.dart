import 'package:flutter/material.dart';
import 'package:web_dashboard/Pages/ClientsPage/Clients.dart';
import 'package:web_dashboard/Pages/DriversPage/Drivers.dart';
import 'package:web_dashboard/Pages/OverviewPage/Overview.dart';
import 'package:web_dashboard/Routers/Routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return getPageRoute(OverviewPage());
    case DriverPageRoute:
      return getPageRoute(DriversPage());
    case ClientsPageRoute:
      return getPageRoute(ClientsPage());

    default:
      return getPageRoute(OverviewPage());
  }
}

PageRoute getPageRoute(Widget child) {
  return MaterialPageRoute(builder: ((context) => child));
}
