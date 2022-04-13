import 'package:flutter/material.dart';
import 'package:mesenin/components/color.dart';
import 'package:mesenin/components/font.dart';

Widget makeCategory({isActive, title}) {
  return AspectRatio(
    aspectRatio: 2.5 / 1,
    child: Container(
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          color: isActive ? MeseninColor.orange : MeseninColor.white,
          borderRadius: BorderRadius.circular(32)),
      child: Align(
        child: Text(
          title,
          style: isActive
              ? MeseninFont.homeBehindActiveChipText
              : MeseninFont.homeBehindInactiveChipText ,
        ),
      ),
    ),
  );
}
