import 'package:flutter/material.dart';

import 'package:qrcodescanner/helper_classes/colors_classes.dart';
import 'package:qrcodescanner/helper_classes/helper_text/helper_text.dart';
import 'package:qrcodescanner/helper_classes/images_path/images_path.dart';


class OnBoardingPageTwo extends StatelessWidget {
  const OnBoardingPageTwo({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 35.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                HelperText().helperText(text: "Scan QR Code", fontSize: 18.0,fontWeight: FontWeight.bold,textColor: whiteColor),
                SizedBox(width: 50.0,),
                Icon(Icons.qr_code_2,color: Colors.white,size: 50,)

              ],
            ),
            SizedBox(height: 70.0),
            Container(
                height:370.0,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: whiteColor
                ),
                child: Image.asset(ImagesPath.appIcon,height: 80.0,)),

          ],
        ),
      ),
    );
  }
}
