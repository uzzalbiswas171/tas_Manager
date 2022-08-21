// import 'dart:core';
//
// import 'package:flutter/material.dart';
//
// class ButtonPage_LOGIN_LOGOUT extends StatefulWidget {
//   ButtonPage_LOGIN_LOGOUT({Key? key,required this.onTap}) : super(key: key);
//
//   final VoidCallback onTap;
//
//   @override
//   State<> createState() => _ButtonPage_LOGIN_LOGOUTState();
// }
// class _ButtonPage_LOGIN_LOGOUTState extends State<ButtonPage_LOGIN_LOGOUT> {
//
//   @override
//   Widget build(BuildContext context) {
//
//   }
// }
import 'package:flutter/material.dart';

class ButtonPage_LOGIN_LOGOUT extends StatelessWidget {
  ButtonPage_LOGIN_LOGOUT({Key? key,required this.fontSize,this.Colorr,this.BordercolorColor,required this.onTap,this.buttonname,this.colorColor}) : super(key: key);

   final VoidCallback onTap;
   final String ? buttonname;
   final Color ? colorColor,Colorr;
   final bool ? BordercolorColor;
   late double ? fontSize;


  @override
  Widget build(BuildContext context) {
  return InkWell(
       onTap:onTap,
          child: Container(
          height: 50,
          margin: EdgeInsets.only(
          top: 10,
          right: 10,
           ),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                  color: BordercolorColor == true ?Colors.white:Colors.white.withOpacity(0),
                width: 1,
              ),
            color:colorColor,
            borderRadius: BorderRadius.circular(33)
        ),
            alignment: Alignment.center,
            child: Text("${buttonname}",style: TextStyle(
              color: Colorr,
              fontSize:fontSize,
            ),),
      ),
    );
  }
}

