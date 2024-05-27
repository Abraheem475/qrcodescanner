import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors_classes.dart';

class CustomAppBar{
  Container customAppBar({var icon,required String text,required bool isIcon,}){
    return Container(
      width: Get.width,
      height: 80.0,
      decoration: BoxDecoration(
        gradient: gradientColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
        child: Row(
          children: [
            isIcon ==true ? Icon(icon,color: whiteColor,) : SizedBox(),
            const SizedBox(width: 30.0,),
            Text(text,style: TextStyle(color: whiteColor,fontSize: 14.0,fontWeight: FontWeight.bold),),

          ],
        ),
      ),
    );
  }
}