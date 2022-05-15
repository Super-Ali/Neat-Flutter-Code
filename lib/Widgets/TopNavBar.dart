import 'package:flutter/material.dart';
import 'package:web_dashboard/Constants/Style.dart';
import 'package:web_dashboard/Helpers/Responsivness.dart';
import 'package:web_dashboard/Widgets/StylishText.dart';

AppBar topNavBar(BuildContext context) => AppBar(
      elevation: 0,
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(image: AssetImage("assets/icons/logoIcon.png")),
                ),
              ],
            )
          : null,
      title: Row(
        children: [
          Visibility(
              child: StylishText(
            text: "Dash",
            color: dark,
            fontWeight: FontWeight.bold,
          )),
          Expanded(child: Container()),
          Icon(
            Icons.settings,
            color: dark.withOpacity(.7),
          ),
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: dark.withOpacity(.7),
                  )),
              Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: active,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: light, width: 2)),
                  ))
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: dark,
          ),
          SizedBox(
            width: 24,
          ),
          StylishText(
            text: "Virus",
            color: dark,
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: CircleAvatar(
                child: Icon(
                  Icons.person_outline,
                  color: dark,
                ),
                backgroundColor: light,
              ),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
    );
