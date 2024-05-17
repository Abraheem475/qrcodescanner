import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrcodescanner/helper_classes/colors_classes.dart';
import 'package:qrcodescanner/helper_classes/custom_appbar_class/custom_appbar_class.dart';
import 'package:qrcodescanner/helper_classes/helper_classes.dart';
import 'package:qrcodescanner/qr_code_generator_items/qr_code_generator_items.dart';

import '../../qr_code_scanner_screen/qr_code_scanner_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: CustomAppBar().customAppBar(Icons.arrow_back,"Home Screen"),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton().customButton(onPress: (){Get.to(()=> const QRCodeScanner());}, text: "QR Code Scanner"),
            const SizedBox(height: 20.0,),
            CustomButton().customButton(onPress: (){Get.to(()=> const QRCodeGeneratorItems());}, text: "Generate QR Code"),

          ],
        ),
      )
    );
  }
}
