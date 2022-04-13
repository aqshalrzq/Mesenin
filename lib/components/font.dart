import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mesenin/components/color.dart';
import 'package:google_fonts/google_fonts.dart';

class MeseninFont {

  // STARTED PAGE
  static var startedMainText = GoogleFonts.nunito(
    color: MeseninColor.white,
    letterSpacing: 1.25,
    fontSize: 32,
    fontWeight: FontWeight.bold
  );

  static var startedSecondText = GoogleFonts.questrial(
    color: MeseninColor.yellow,
    letterSpacing: 1.15,
    fontSize: 16,
    fontWeight: FontWeight.normal
  );

  static var startedBehindText = GoogleFonts.nunito(
    color: MeseninColor.white,
    letterSpacing: 1.5,
    fontSize: 24,
    fontWeight: FontWeight.bold
  );

  static var startedAccentText = GoogleFonts.questrial(
      color: MeseninColor.white,
      letterSpacing: 1,
      fontSize: 16,
      fontWeight: FontWeight.normal
  );


  // HOME PAGE
  static var homeMainText = GoogleFonts.quicksand(
    color: MeseninColor.black,
    letterSpacing: 1.25,
    fontSize: 24,
    fontWeight: FontWeight.w500
  );

  static var homeSecondText = GoogleFonts.quicksand(
      color: MeseninColor.gray,
      letterSpacing: 1.25,
      fontSize: 16,
      fontWeight: FontWeight.w500
  );

  static var homeBehindActiveChipText = GoogleFonts.questrial(
    color: MeseninColor.white,
    letterSpacing: 0.75,
    fontSize: 12,
    fontWeight: FontWeight.w400
  );

  static var homeBehindInactiveChipText = GoogleFonts.questrial(
      color: MeseninColor.gray,
      letterSpacing: 0.75,
      fontSize: 12,
      fontWeight: FontWeight.w400
  );

  static var homeMainItemPrice = GoogleFonts.nunito(
    color: MeseninColor.white,
    letterSpacing: 1,
    fontWeight: FontWeight.w500,
    fontSize: 32
  );

  static var homeSecondItemPrice = GoogleFonts.nunito(
      color: MeseninColor.white,
      letterSpacing: 1,
      fontWeight: FontWeight.w700,
      fontSize: 16
  );

}