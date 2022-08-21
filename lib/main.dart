
import 'package:figma/s17teamTask/s17teamtaskpage.dart';
import 'package:figma/s18Partoteam/s18partoteam.dart';
import 'package:flutter/material.dart';

import 'HomePage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
     home: const HomePage1(),

    // home: const s7ProfilePage(),
  //   home: const s12pageDialog(),
  //  home: const s16pageParto(),
  //  home: const s13Pteamworpage(),
  //  home: const s17TeamTaskPage(),
 //  home: const s18Partoteam(),

    );
  }
}
