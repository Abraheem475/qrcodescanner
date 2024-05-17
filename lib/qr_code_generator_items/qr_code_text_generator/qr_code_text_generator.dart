import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrcodescanner/helper_classes/colors_classes.dart';
import 'package:qrcodescanner/helper_classes/custom_appbar_class/custom_appbar_class.dart';
import 'package:qrcodescanner/helper_classes/helper_classes.dart';
import 'package:qrcodescanner/helper_classes/text_form_field/text_form_field_class.dart';
import 'package:qrcodescanner/provider_classes/qr_code_text_generator_provider_class/qr_code_text_generator_provider_class.dart';

class QRCodeTextGenerator extends StatelessWidget {
  const QRCodeTextGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    var textProviderGenerator = Provider.of<QRCodeTextGeneratorProvider>(context,listen: false);
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: CustomAppBar().customAppBar(Icons.arrow_back, "Generate QR Code Text"),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<QRCodeTextGeneratorProvider>(builder: (context, value,child){
                return Column(
                  children:[
                    value.qrImage,
                    const SizedBox(height: 20.0,),
                    Container(
                      height: 65.0,
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                      child: LabelTextField().labelTextField("Enter your text / URL",
                          "Enter your text / URL",
                          value.urlController),
                    ),]
                );
              }),
              const SizedBox(height: 20.0,),
              CustomButton().customButton(onPress: (){
                textProviderGenerator.textGenerator();
              }, text: "Generate QR Code"),
           ],
          ),
        ),
      ),
    );
  }
}
