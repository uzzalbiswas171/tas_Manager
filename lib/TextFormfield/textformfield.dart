import 'package:flutter/material.dart';

class TextFormFieldPage extends StatelessWidget {
  TextFormFieldPage({Key? key,
    required this.controller,
    required this.hintText,
    this.kybordType_dresimel,
    this.kybordType_sign,
    required this.TextColor,
    required this.prefixicon,
    required this.borderradius,
    required this.obscureText,
    this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final bool ? kybordType_dresimel;
  final  bool ? kybordType_sign;
  final Color ? TextColor;
  final IconButton ? prefixicon;
  final BorderRadius ? borderradius;
  final FormFieldValidator<String>? validator;
  final bool obscureText ;


  @override
  Widget build(BuildContext context) {

   return TextFormField(
     obscureText: obscureText,
     validator: validator,
      controller: controller,
      keyboardType: TextInputType.numberWithOptions(
        decimal: kybordType_dresimel,
        signed: kybordType_sign,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
          hintText: "${hintText}",
          hintStyle: TextStyle(
            fontSize: 19,
           color: TextColor,
            fontWeight: FontWeight.w500,
          ),
        prefixIcon:Container(
          height: 44,
          decoration: BoxDecoration(
            borderRadius: borderradius,
          //  color: Colors.grey,
          ),

          child:prefixicon,
        ),
      ),
     style: TextStyle(
       color: Colors.white70,
       fontSize: 22,
     ),
    );
  }
}
