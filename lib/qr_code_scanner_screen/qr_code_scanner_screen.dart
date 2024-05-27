import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrcodescanner/helper_classes/colors_classes.dart';
import 'package:qrcodescanner/helper_classes/custom_appbar_class/custom_appbar_class.dart';
import 'package:qrcodescanner/helper_classes/helper_classes.dart';
import 'package:qrcodescanner/provider_classes/qr_scanner_provider_class/qr_scanner_provider_class.dart';
import 'package:url_launcher/link.dart';

class QRCodeScanner extends StatelessWidget {
  const QRCodeScanner({super.key});

  @override
  Widget build(BuildContext context) {
    var qrProviderScanner = Provider.of<QRProviderScanner>(context,listen: false);
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          CustomAppBar().customAppBar(isIcon: false,text: "QR Code Scanner"),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Consumer<QRProviderScanner>(builder: (context, value ,child){
                 return Link(
                     target: LinkTarget.self,
                     uri: Uri.parse(value.data),
                     builder: (BuildContext ctx,  FollowLink? openLink){return
                       TextButton(
                           onPressed: () {
                             openLink!();
                           },
                           child: Text(value.data,style: const TextStyle(color: Colors.black),));});
               }),
               const SizedBox(height: 20.0,),
                CustomButton().customButton(onPress: (){
                  qrProviderScanner.scanBarcodeNormal();
                }, text: "Scan QR Code", height: 50.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
