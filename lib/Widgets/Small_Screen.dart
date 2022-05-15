import 'package:flutter/material.dart';
import 'package:web_dashboard/Helpers/LocalNavigation.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: localNavigator(),
    );
  }
}
