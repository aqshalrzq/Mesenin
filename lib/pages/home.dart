import 'package:flutter/material.dart';
import 'package:mesenin/components/animation.dart';
import 'package:mesenin/components/color.dart';
import 'package:mesenin/components/font.dart';
import 'package:mesenin/function/category.dart';
import 'package:mesenin/function/item.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: const Icon(null),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_rounded, color: MeseninColor.gray),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Anim(1, Text('Yang Paling Disukai', style: MeseninFont.homeMainText,)),
                  const SizedBox(height: 8,),

                  SizedBox(
                    height: 48,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Anim(1, makeCategory(isActive: true, title: 'Pecel Madiun')),
                        Anim(1.3, makeCategory(isActive: false, title: 'Krengsengan')),
                        Anim(1.4, makeCategory(isActive: false, title: 'Gudeg')),
                        Anim(1.5, makeCategory(isActive: false, title: 'Es Dawet')),
                        Anim(1.6, makeCategory(isActive: false, title: 'Wedang Jahe')),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                ],
              ),
            ),

            Anim(1, Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, bottom: 8),
              child: Text('Promo Gratis Ongkir Buat Kamu, Nih!', style: MeseninFont.homeSecondText),
            )),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Anim(1.4, makeItem(image: 'assets/body/mesen_gambar_01.jpg', food: "Dark Chocolate Ice Cream", price: "Rp. 74.799")),
                    Anim(1.4, makeItem(image: 'assets/body/mesen_gambar_02.jpg', food: "Spaghetti Jawa", price: "Rp. 74.799")),
                    Anim(1.4, makeItem(image: 'assets/body/mesen_gambar_03.jpg', food: "Lalapan Bumbu Rujak", price: "Rp. 74.799")),
                    Anim(1.4, makeItem(image: 'assets/body/mesen_gambar_04.jpg', food: "Kopi Joss Asli Yogyakarta", price: "Rp. 74.799")),
                    Anim(1.4, makeItem(image: 'assets/body/mesen_gambar_05.jpg', food: "Pizza Khas Mbatuan", price: "Rp. 74.799")),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
