import 'package:flutter/material.dart';
import 'package:qrcodescanner/helper_classes/colors_classes.dart';

class CustomAppBar{
  AppBar customAppBar(var icon,String text){
    return AppBar(
      backgroundColor: appColor,
      leading: Icon(icon,color: whiteColor,),
      title: Text(text,style: TextStyle(color: whiteColor,fontSize: 14.0,fontWeight: FontWeight.bold),),
    );
  }
}