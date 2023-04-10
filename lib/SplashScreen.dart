import 'dart:async';
import 'package:fade_out_particle/fade_out_particle.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'WebView.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _disappear = true;
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => WebViewClass())));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xffff0074FB),
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: [
                  (Center(
                    // child: Lottie.asset(
                    //   'assets/king.json',
                    //   width: 450,
                    //   height: 300,
                    // ),
                  )),
                  FadeOutParticle(
                    disappear: _disappear,
                    duration:Duration(seconds: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        SizedBox(width: 8),

                        Text(
                          'WFTT',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(
                              fontWeight: FontWeight.w900,fontSize: 30,

                              color: Colors.white),
                        ),
                      ],
                    ),
                    onAnimationEnd: () => print('animation ended'),
                  ),
                ],
              )
            ])));
  }
}
