import 'package:flutter/material.dart';
import 'package:travel_app_flutter/misc/colors.dart';
import 'package:travel_app_flutter/widgets/app_buttons.dart';
import 'package:travel_app_flutter/widgets/app_large_text.dart';
import 'package:travel_app_flutter/widgets/app_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenState = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 360,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/mountaine.jpg"), fit: BoxFit.fill),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 70,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Positioned(
            top: 320,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              width: MediaQuery.of(context).size.width,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppLargeText(
                          text: "Kamazi",
                          color: Colors.black.withOpacity(0.78)),
                      AppLargeText(text: "\$ 150", color: AppColors.mainColor),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(children: [
                    Icon(Icons.location_on, color: AppColors.mainColor),
                    SizedBox(width: 10),
                    AppText(text: "Japan", color: AppColors.textColor1),
                  ]),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: index < gottenState
                                ? AppColors.starColor
                                : AppColors.textColor2,
                          );
                        }),
                      ),
                      SizedBox(width: 10),
                      AppText(text: "(4.0)", color: AppColors.textColor2)
                    ],
                  ),
                  SizedBox(height: 25),
                  AppLargeText(
                    text: "People",
                    color: Colors.black.withOpacity(0.8),
                    size: 20,
                  ),
                  SizedBox(height: 5),
                  AppText(
                    text: "Number of people in your group",
                    color: AppColors.mainTextColor,
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    children: List.generate(5, (index) {
                      return InkWell(
                        onTap: (){

                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: AppButtons(
                            color: Colors.black,
                            backgroundColor: AppColors.buttonBackground,
                            size: 50,
                            borderColor: AppColors.buttonBackground,
                            text: (index + 1).toString(),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
