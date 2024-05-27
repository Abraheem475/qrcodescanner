import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrcodescanner/helper_classes/colors_classes.dart';
import 'package:qrcodescanner/helper_classes/custom_appbar_class/custom_appbar_class.dart';
import 'package:qrcodescanner/helper_classes/helper_classes.dart';
import 'package:qrcodescanner/helper_classes/text_form_field/text_form_field_class.dart';
import 'package:qrcodescanner/provider_classes/qr_code_wifi_generator_provider/qr_code_wifi_generator_provider.dart';

class QRCodeWiFiGenerator extends StatelessWidget {
  const QRCodeWiFiGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          CustomAppBar().customAppBar(text: "Generate Wifi QR Code",isIcon: false),
          Consumer<WifiProvider>(builder: (context,wifiProvider,child){
            Provider.of<WifiProvider>(context,listen: false);
            return Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (wifiProvider.valueQr != null)
                        QrImageView(
                          data: wifiProvider.valueQr, // Data to encode
                          version: QrVersions.auto,
                          size: 200.0,
                        ),
                      const SizedBox(height: 20,),
                      LabelTextField().labelTextField("Enter Your Wifi Name", "Enter Your Wifi Name", wifiProvider.nameNetController),
                      const SizedBox(height: 20.0,),
                      LabelTextField().labelTextField("Enter Your Wifi Password", "Enter Your Wifi Password", wifiProvider.passNetController),
                      const SizedBox(height: 20.0,),
                      LabelTextField().labelTextField("Enter Type of Security", "Enter Type of Security", wifiProvider.secNetController),
                      const SizedBox(height: 20.0,),
                      CustomButton().customButton(onPress: (){
                        wifiProvider.getValue();
                      }, text: "Generate QR Code", height: 50.0),
                    ],
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
