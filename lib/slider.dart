import 'package:flutter/material.dart';
class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);
  @override
  State<SliderPage> createState() => _SliderPageState();
}
class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: double.infinity,
      margin: EdgeInsets.only(
        right: 35,
        left: 35,
      ),
      //   color: Colors.blue,
      child: Image.asset("img/ind.png"),
    );
  }
}
