import 'package:flutter/material.dart';

class LabelTextField{
  Widget labelTextField(String hintText,String labelText,var controller,){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ) ),
    );
  }
}