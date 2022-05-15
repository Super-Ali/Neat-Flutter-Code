import 'package:flutter/material.dart';
import 'package:web_dashboard/Constants/Style.dart';
import 'package:web_dashboard/Widgets/StylishText.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String? value;
  final Color? topColor;
  final bool? isActive;
  final Function? onTap;
  const InfoCardSmall(
      {Key? key,
      required this.title,
      this.value,
      this.topColor,
      this.isActive = false,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap!(),
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: isActive! ? active : dark, width: 5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StylishText(
                text: title,
                size: 24,
                fontWeight: FontWeight.w300,
                color: isActive!
                    ? active
                    : Color.fromARGB(255, 119, 119, 119).withOpacity(.7),
              ),
              StylishText(
                text: value!,
                size: 24,
                fontWeight: FontWeight.bold,
                color: isActive! ? active : dark,
              )
            ],
          ),
        ),
      ),
    );
  }
}
