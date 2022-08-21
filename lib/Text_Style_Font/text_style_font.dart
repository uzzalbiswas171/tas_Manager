

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

MyTextStyle(double size,[Color? TextColor, FontWeight ?textfontWeight]){

  return GoogleFonts.nunito(
    fontSize: size,
    color: TextColor,
    fontWeight: textfontWeight,
  );
}