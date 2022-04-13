import 'package:flutter/material.dart';
import 'package:mesenin/components/color.dart';
import 'package:mesenin/components/font.dart';

Widget makeItem({image, food, price}) {
  return AspectRatio(
    aspectRatio: 1 / 1.5,
    child: GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                stops: const [
                  .2,
                  .9
                ],
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3)
                ]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.favorite, color: MeseninColor.white),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      price,
                      style: MeseninFont.homeMainItemPrice,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      food,
                      style: MeseninFont.homeSecondItemPrice,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
