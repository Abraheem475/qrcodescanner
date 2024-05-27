import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrcodescanner/helper_classes/custom_appbar_class/custom_appbar_class.dart';
import 'package:qrcodescanner/helper_classes/helper_classes.dart';
import 'package:qrcodescanner/helper_classes/text_form_field/text_form_field_class.dart';
import 'package:qrcodescanner/provider_classes/website_provider.dart';

import '../../helper_classes/colors_classes.dart';

class QrCodeWebsiteGenerator extends StatelessWidget {
  const QrCodeWebsiteGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    var webProviderGenerator = Provider.of<WebsiteProvider>(context,listen: false);
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          CustomAppBar().customAppBar(text:  "Generate website QR Code",isIcon: false),

          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<WebsiteProvider>(builder: (context, webProviderGenerator,child){
                    return Column(
                        children:[
                          webProviderGenerator.qrImage,
                          const SizedBox(height: 20.0,),
                          Container(
                            height: 65.0,
                            padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                            child: LabelTextField().labelTextField("Enter your Url",
                                "Enter your Url",
                                webProviderGenerator.urlController),
                          ),]
                    );
                  }),
                  const SizedBox(height: 20.0,),
                  CustomButton().customButton(onPress: (){
                    webProviderGenerator.textGenerator();
                  }, text: "Generate QR Code", height: 50.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
