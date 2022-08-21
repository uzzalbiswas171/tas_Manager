import 'package:flutter/material.dart';

class Partoteempage{
  final EdgeInsetsGeometry? margi;
  final String ? about, datetime, work;
  final Color Circlecolorss;
  final double? we;
  Partoteempage({

    this.margi,
    this.we,
    this.about,
    required this.Circlecolorss,
    this.datetime,
    this.work});
}




List<Partoteempage>  partoList=[
   Partoteempage(
     we: 200.00,
       margi: EdgeInsets.only(
       top: 40,
       left: 100,
     ),

     work: "Somthing work",
       Circlecolorss: Color(0xffa41f1f),
     about: "jydgs djsgfusg6y7ewe nuewy",
     datetime: "10.00 AM - 10.30 AM"
   ),
  Partoteempage(
      we: 300,
      margi: EdgeInsets.only(
          top: 10,
          left: 40,
          right: 5
      ),
      work: "Charcular work",
      Circlecolorss: Color(0xffa41f1f),
      about: "jydgs djsgfusg6y7ewe nuewy",
      datetime: "10.00 AM - 10.30 AM"
  ),
  Partoteempage(
    we: 100,
    margi: EdgeInsets.only(
        top: 10,
        left: 60,
        right: 5
    ),
      work: "junayd work",
      Circlecolorss: Color(0xffa41f1f),
      about: "jydgs djsgfusg6y7ewe nuewy",
      datetime: "10.00 AM - 10.30 AM",

  ),
  Partoteempage(
      we: 80,
      margi: EdgeInsets.only(
          top: 10,
          left: 100,
          right: 5
      ),
      work: "Somthing work",
      Circlecolorss: Color(0xffa41f1f),
      about: "jydgs djsgfusg6y7ewe nuewy",
      datetime: "10.00 AM - 10.30 AM"
  ),
  Partoteempage(
      we: 100,
      margi: EdgeInsets.only(
          top: 10,
          left: 20,
          right: 5
      ),

      work: "Somthing work",
      Circlecolorss: Color(0xffa41f1f),
      about: "jydgs djsgfusg6y7ewe nuewy",
      datetime: "10.00 AM - 10.30 AM"
  ),
  Partoteempage(
      we: 100,
      margi: EdgeInsets.only(
          top: 100,
          left: 20,
          right: 5
      ),
      work: "Somthing work",
      Circlecolorss: Color(0xffa41f1f),
      about: "jydgs djsgfusg6y7ewe nuewy",
      datetime: "10.00 AM - 10.30 AM"
  ),
  ];
