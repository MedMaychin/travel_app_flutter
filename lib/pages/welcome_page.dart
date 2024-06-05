import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "travelbaggage.jpg",
    "travelbaggage1.jpg",
    "travelbaggage2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration:  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/"+ images[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 150, left: 20 ,right: 20),
                child: Row(
                  children: [

                  ],
                ),
              ),
            );
          }),
    );
  }
}
