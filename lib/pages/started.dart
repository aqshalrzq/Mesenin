import 'package:flutter/material.dart';
import 'package:mesenin/components/color.dart';
import 'package:mesenin/components/font.dart';
import 'package:mesenin/pages/home.dart';
import 'package:mesenin/components/animation.dart';
import 'package:page_transition/page_transition.dart';

class Started extends StatefulWidget {
  @override
  _StartedState createState() => _StartedState();
}

class _StartedState extends State<Started> with TickerProviderStateMixin {
  bool visible = true;

  AnimationController animControl;
  Animation<double> anim;

  @override
  void initState() {
    animControl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100));

    anim = Tween<double>(begin: 1.0, end: 25.0).animate(animControl);

    super.initState();
  }

  @override
  void dispose() {
    animControl.dispose();
    super.dispose();
  }

  void onTap() {
    setState(() {
      visible = false;
    });
    animControl.forward().then((f) => Navigator.push(
        context, PageTransition(child: Home(), type: PageTransitionType.fade)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/body/mesen_splash.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                MeseninColor.black.withOpacity(0.9),
                MeseninColor.black.withOpacity(0.8),
                MeseninColor.black.withOpacity(0.2)
              ]
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                // STARTED - CENTER TEXT STATE
                Anim(0.5, Text(
                  'Cukup Satu Kali Ketuk',
                  style: MeseninFont.startedMainText,
                )),
                const SizedBox(
                  height: 4,
                ),
                Anim(1, Text(
                  "Makanan pesanan kamu udah siap dianter!",
                  style: MeseninFont.startedSecondText,
                )),

                // STARTED - CENTER FOOTER ACTION
                const SizedBox(
                  height: 96,
                ),
                ScaleTransition(
                  scale: anim,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(
                        colors: [
                          MeseninColor.yellow,
                          MeseninColor.orange
                        ]
                      )
                    ),
                    child: AnimatedOpacity(
                      opacity: visible ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 50),
                      child: MaterialButton(
                        onPressed: () => onTap(),
                        minWidth: double.infinity,
                        child: Text(
                          "Mulai Sekarang!",
                          style: MeseninFont.startedBehindText,
                        ),
                      ),
                    ),
                  ),
                ),

                // STARTED - CENTER FOOTER TEXT
                const SizedBox(
                  height: 32,
                ),
                Anim(1.4, AnimatedOpacity(
                  opacity: visible ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 50),
                  child: Align(
                    child: Text(
                      "Tersedia 24/7 khusus untuk anda",
                      style: MeseninFont.startedAccentText,
                    ),
                  ),
                )),
                const SizedBox(
                  height: 32,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
