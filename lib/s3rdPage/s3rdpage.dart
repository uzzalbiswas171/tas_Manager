import 'dart:math';

import 'package:figma/ButtonPage/login_logout_page.dart';
import 'package:figma/Text_Style_Font/text_style_font.dart';
import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:figma/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../s4Page/s4page.dart';

class S3rdPage extends StatefulWidget {
  const S3rdPage({Key? key}) : super(key: key);

  @override
  State<S3rdPage> createState() => _S3rdPageState();
}

class _S3rdPageState extends State<S3rdPage> {
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
                  child: Text("Create a Task and Assign it to Your Team Members",
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
                      "img/svg2.svg",
                      semanticsLabel: 'Acme Logo'
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ButtonPage_LOGIN_LOGOUT(
                  fontSize: 26,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => S4Page(),));
                    },
                    buttonname: "Login",
                    colorColor:blue,
                  Colorr: Colors.white,
                ),
                ButtonPage_LOGIN_LOGOUT(
                  fontSize: 26,
                    onTap: () {  },
                    buttonname: "LogOut",
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
