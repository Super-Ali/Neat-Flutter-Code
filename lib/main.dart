import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard/Controllers/Menu_Controller.dart';
import 'package:web_dashboard/Controllers/Navigation_Controller.dart';
import 'package:web_dashboard/Pages/404/ErrorPage.dart';
import 'package:web_dashboard/Pages/AuthenticationPage/Authentication.dart';
import 'package:web_dashboard/Routers/Routes.dart';
import 'package:web_dashboard/Widgets/Layout.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const webDashboard());
}

class webDashboard extends StatelessWidget {
  const webDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AuthenticationPageRoute,
      unknownRoute: GetPage(
        name: "/not-found",
        page: () => ErrorPage(),
      ),
      getPages: [
        GetPage(name: rootroute, page: () => SiteLayout()),
        GetPage(name: AuthenticationPageRoute, page: () => AuthenticationPage())
      ],
      debugShowCheckedModeBanner: false,
      title: 'Web Dashboard',
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 212, 212, 212),
          textTheme: GoogleFonts.loraTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
          }),
          primaryColor: Colors.blue),
    );
  }
}
