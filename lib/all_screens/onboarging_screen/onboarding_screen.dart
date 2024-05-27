import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrcodescanner/helper_classes/colors_classes.dart';
import 'package:qrcodescanner/helper_classes/helper_text/helper_text.dart';
import 'package:qrcodescanner/helper_classes/images_path/images_path.dart';


class OnBoardingPageOne extends StatelessWidget {
  OnBoardingPageOne({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 60.0),
            Container(
              height: 100.0,
              width: Get.width,
              decoration: BoxDecoration(
                color: appColor,
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Center(child: HelperText().helperText(text: "Scan Qr Code", fontSize: 14.0,fontWeight: FontWeight.bold,textColor: whiteColor)),
            ),
            SizedBox(height: 20.0),
            Image.asset(ImagesPath.appIcon),
            SizedBox(height:20.0),
            Container(
              height: 50.0,
              width: 150.0,
              decoration: BoxDecoration(
                  color: appColor,
                  borderRadius: BorderRadius.circular(50.0)
              ),
              child: Center(child: HelperText().helperText(text: "Scan", fontSize: 14.0,fontWeight: FontWeight.bold,textColor: whiteColor)),
            ),

          ],
        ),
      ),
    );
  }
}
