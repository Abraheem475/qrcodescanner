import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrcodescanner/helper_classes/colors_classes.dart';
import 'package:qrcodescanner/helper_classes/helper_text/helper_text.dart';

class CustomButton{
  Container customButton(String text,double height){
    return Container(
      height: height,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: appColor,
      ),
      child: HelperText().helperText(text: text, fontSize: 12.0,fontWeight: FontWeight.bold),
    );
  }
}