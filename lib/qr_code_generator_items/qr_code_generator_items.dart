import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrcodescanner/helper_classes/colors_classes.dart';
import 'package:qrcodescanner/helper_classes/custom_appbar_class/custom_appbar_class.dart';
import 'package:qrcodescanner/helper_classes/helper_classes.dart';
import 'package:qrcodescanner/qr_code_generator_items/qr_code_image_generator/qr_code_image_generator.dart';
import 'package:qrcodescanner/qr_code_generator_items/qr_code_text_generator/qr_code_text_generator.dart';
import 'package:qrcodescanner/qr_code_generator_items/qr_code_wifi_generator/qr_code_wifi_generator.dart';

class QRCodeGeneratorItems extends StatelessWidget {
  const QRCodeGeneratorItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: CustomAppBar().customAppBar(Icons.arrow_back, "Generate QR Code"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton().customButton(onPress: (){Get.to(() => const QRCodeTextGenerator());}, text: "Text"),
            CustomButton().customButton(onPress: (){Get.to(() => const QRCodeGeneratorImage());}, text: "Image"),
            CustomButton().customButton(onPress: (){Get.to(() => const QRCodeWiFiGenerator());}, text: "Wifi"),
          ],
        ),
      ),
    );
  }
}
