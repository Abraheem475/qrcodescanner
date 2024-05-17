import 'package:flutter/cupertino.dart';


class HelperText{
  Widget helperText({required String text,var textColor,var fontWeight,required double fontSize,var textAlign}){
    return Text(text,textAlign: textAlign,
      style: TextStyle(color: textColor,fontWeight: fontWeight,fontSize: fontSize),);
  }
}
