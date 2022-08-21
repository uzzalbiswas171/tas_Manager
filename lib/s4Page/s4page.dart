import 'dart:math';

import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:figma/s5LoginPage/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../ButtonPage/login_logout_page.dart';
import '../Text_Style_Font/text_style_font.dart';
import '../slider.dart';
class S4Page extends StatefulWidget {
  const S4Page({Key? key}) : super(key: key);

  @override
  State<S4Page> createState() => _S4PageState();
}

class _S4PageState extends State<S4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baccolor,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 343,
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,
                  child: Text("Get Notified when you Get a New Assignment",
                    style: MyTextStyle(
                      29,
                      Color(0xffffffff),
                      FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 20,
                  width: 200,
                  child: SvgPicture.asset(
                      "img/s3.svg",
                      semanticsLabel: 'Acme Logo'
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ButtonPage_LOGIN_LOGOUT(
                  fontSize: 26,
                  onTap: () {  },
                  buttonname: "Login",
                  colorColor:blue,
                  Colorr: Colors.white,
                ),
                ButtonPage_LOGIN_LOGOUT(
                  fontSize: 26,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => sLoginPage(),));
                  },
                  buttonname: "SignUP",
                  colorColor: red.withOpacity(0),
                  BordercolorColor: true,
                  Colorr: Colors.white,

                ),
                SizedBox(height: 20,),
                SliderPage(),
              ],
            ),
          ),
          Positioned(
            top: -190,
            child: Transform.rotate(
              angle: pi/7,
              child: Container(
                height: 420,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(33)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
