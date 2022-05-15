import 'package:flutter/widgets.dart';
import 'package:web_dashboard/Constants/Controllers.dart';
import 'package:web_dashboard/Routers/Router.dart';
import 'package:web_dashboard/Routers/Routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );
