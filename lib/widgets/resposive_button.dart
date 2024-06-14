import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_flutter/misc/colors.dart';
import 'package:travel_app_flutter/widgets/app_text.dart';

class ResposiveButton extends StatelessWidget {
  bool? isResposive;
  double? width;

  ResposiveButton({
    super.key,
    this.isResposive = false,
    this.width = 120,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 60,
        width: isResposive == true ? double.maxFinite : width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResposive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResposive == true
                ? Container(
                    margin: EdgeInsets.only(left: 20),
                    child: AppText(text: "Book trip now ", color: Colors.white))
                : Container(),
            Image.asset("img/button-one.png"),
          ],
        ),
      ),
    );
  }
}
