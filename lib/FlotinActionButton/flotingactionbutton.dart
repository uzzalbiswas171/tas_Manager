import 'package:figma/Widget/ColorPage/colorpage.dart';
import 'package:flutter/material.dart';

class FlotinActionButton extends StatelessWidget {
  const FlotinActionButton({Key? key,
    required this.IconColor,
   required this.icon,
  required  this.ontap
  }) : super(key: key);
  final VoidCallback? ontap;
  final IconData? icon;
  final Color ? IconColor;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
           onPressed: ontap,
          backgroundColor: IconColor,
         child: Icon(icon),
    );
  }
}
