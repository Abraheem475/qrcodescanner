import 'package:flutter/material.dart';
import 'package:qrcodescanner/helper_classes/colors_classes.dart';

class CustomButton{
Widget customButton({required VoidCallback onPress,required String text}){
  return ElevatedButton(onPressed: onPress, child: Text(text,style: TextStyle(color: appColor,fontSize: 12.0,fontWeight: FontWeight.bold),));}
}