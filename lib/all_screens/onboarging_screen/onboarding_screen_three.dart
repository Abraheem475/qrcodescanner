import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrcodescanner/all_screens/narbar_screen/narbar_screen.dart';

import 'package:qrcodescanner/helper_classes/colors_classes.dart';
import 'package:qrcodescanner/helper_classes/helper_text/helper_text.dart';
import 'package:qrcodescanner/helper_classes/images_path/images_path.dart';


class OnBoardingPageThree extends StatelessWidget {
  const OnBoardingPageThree({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          Container(
              height: 85.0,
              width: Get.width,
              decoration: BoxDecoration(color: appColor),
              child: Center(child: HelperText().helperText(text: "Scan QR Code", fontSize: 18.0,fontWeight: FontWeight.bold,textColor: whiteColor))),
          SizedBox(height: 30.0),
          Image.asset(ImagesPath.appIcon,height: 80.0,),
          SizedBox(height: 30.0),
          Image.asset(ImagesPath.appIcon,height: 300.0,),
          SizedBox(height: 30.0),
          GestureDetector(
            onTap:  (){
              Get.to(NavBarScreen());
            },
            child: Container(height: 50.0,
            width: 150.0,
            decoration: BoxDecoration(
              color: whiteColor,
              border: Border.all(color: appColor),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Center(child: HelperText().helperText(text: "Scan QR Code", fontSize: 14.0,textColor: appColor)),),
          )
        ],
      ),
    );
  }
}
