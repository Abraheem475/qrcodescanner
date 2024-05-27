import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrcodescanner/helper_classes/colors_classes.dart';
import 'package:qrcodescanner/helper_classes/custom_appbar_class/custom_appbar_class.dart';
import 'package:qrcodescanner/helper_classes/images_path/images_path.dart';
import 'package:qrcodescanner/qr_code_generator_items/qr_code_image_generator/qr_code_image_generator.dart';
import 'package:qrcodescanner/qr_code_generator_items/qr_code_image_generator/qr_code_website_generator.dart';
import 'package:qrcodescanner/qr_code_generator_items/qr_code_text_generator/qr_code_text_generator.dart';
import 'package:qrcodescanner/qr_code_generator_items/qr_code_wifi_generator/qr_code_wifi_generator.dart';

class QRCodeGeneratorItems extends StatelessWidget {
  const QRCodeGeneratorItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          CustomAppBar().customAppBar(text: "Generate QR Code",isIcon: false),
          Center(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [GestureDetector(onTap: (){Get.to(() => const QRCodeGeneratorImage());},child: Image.asset(ImagesPath.imageButton,height: 150.0,fit: BoxFit.fill,),),
                  GestureDetector(onTap: (){Get.to(() => const QRCodeTextGenerator());},child: Image.asset(ImagesPath.textButton,height: 150.0,fit: BoxFit.fill,),),],),
                Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [ GestureDetector(onTap: (){Get.to(() => const QRCodeWiFiGenerator());},child: Image.asset(ImagesPath.wifiButton,height: 150.0,fit: BoxFit.fill,),),
                 GestureDetector(onTap: (){Get.to(() => const QrCodeWebsiteGenerator());},child: Image.asset(ImagesPath.websiteButton,height: 150.0,fit: BoxFit.fill,),),],)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
