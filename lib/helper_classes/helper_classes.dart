import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrcodescanner/helper_classes/colors_classes.dart';

class CustomButton{
Widget customButton({required VoidCallback onPress,required String text,required double height,}){
  return GestureDetector(
    onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
            height: height,
            width: Get.width,
          decoration: BoxDecoration(
            gradient: gradientColor,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ), child: Center(child: Text(text,style: TextStyle(color: whiteColor,fontSize: 13.0,fontWeight: FontWeight.bold),))),
      ));}
}