
import 'package:figma/123Page/123page.dart';
import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:flutter/material.dart';


import '../s3rdPage/s3rdpage.dart';

class Second2Page extends StatefulWidget {
  const Second2Page({Key? key}) : super(key: key);

  @override
  State<Second2Page> createState() => _Second2PageState();
}

class _Second2PageState extends State<Second2Page> {
  void initState() {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => S3rdPage(),));
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baccolor,
      body: PAge123Page(),
    );
  }
}
