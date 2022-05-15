import 'package:flutter/material.dart';
import 'package:web_dashboard/Helpers/LocalNavigation.dart';
import 'package:web_dashboard/Widgets/SideMenu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SideMenu()),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: localNavigator(),
          ),
          flex: 5,
        )
      ],
    );
  }
}
