import 'package:flutter/material.dart';
import 'package:web_dashboard/Helpers/Responsivness.dart';
import 'package:web_dashboard/Widgets/Large_Screen.dart';
import 'package:web_dashboard/Widgets/SideMenu.dart';
import 'package:web_dashboard/Widgets/Small_Screen.dart';
import 'package:web_dashboard/Widgets/TopNavBar.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
        extendBodyBehindAppBar: true,
        key: scaffoldKey,
        drawer: Drawer(
          child: SideMenu(),
        ),
        appBar: topNavBar(context),
        body: const ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
