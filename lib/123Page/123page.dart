
import 'dart:math';

import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:figma/slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../ButtonPage/login_logout_page.dart';
import '../Text_Style_Font/text_style_font.dart';
import '../s3rdPage/s3rdpage.dart';

class PAge123Page extends StatefulWidget {
  const PAge123Page({Key? key}) : super(key: key);

  @override
  State<PAge123Page> createState() => _PAge123PageState();
}

class _PAge123PageState extends State<PAge123Page> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                child: Text("Update Progress Your Work for The Team",
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
                    "img/slider.svg",
                    semanticsLabel: 'Acme Logo'
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonPage_LOGIN_LOGOUT(
                  fontSize: 26,
                  onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => S3rdPage(),));
              },buttonname: ":Login",colorColor:blue),
              ButtonPage_LOGIN_LOGOUT(
                  fontSize: 26,
                  onTap: () {  },buttonname: "LogOut",colorColor: red.withOpacity(0),BordercolorColor: true),
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
    );
  }
}
