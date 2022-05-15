import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard/Constants/Style.dart';
import 'package:web_dashboard/Routers/Routes.dart';
import 'package:web_dashboard/Widgets/Layout.dart';
import 'package:web_dashboard/Widgets/StylishText.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            constraints: BoxConstraints(maxWidth: 400),
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Image.asset(
                          "assets/icons/logoIcon.png",
                          width: 60,
                        )),
                    Expanded(child: Container())
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text("Login",
                        style: GoogleFonts.roboto(
                            fontSize: 30, fontWeight: FontWeight.bold))
                  ],
                ),
                Row(
                  children: [
                    StylishText(
                      text: "Welcome to the Admin Panel",
                      color: grey,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "abc@domain.com",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "123",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        StylishText(text: "Remember Me")
                      ],
                    ),
                    StylishText(
                      text: "Forgot Password",
                      color: Colors.blue,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Get.offAllNamed(rootroute);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: StylishText(
                      text: "login",
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: "Do not Have Admin Credentials ? "),
                  TextSpan(
                      text: "Request Credentials ! ",
                      style: TextStyle(color: Colors.blue))
                ]))
              ],
            )),
      ),
    );
  }
}
