import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../helper_classes/colors_classes.dart';
import '../../helper_classes/custom_appbar_class/custom_appbar_class.dart';
import '../../helper_classes/helper_text/helper_text.dart';
import '../privacy_policy/privacy_policy.dart';
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar().customAppBar(Icons.arrow_back, "Setting Screen"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
        child: GestureDetector(
          onTap: (){Get.to(PrivacyAndPolicy().privacyAndPolicy());},
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
            child: ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              tileColor: appColor,
              leading: Icon(Icons.privacy_tip_outlined,color: Colors.white,size: 20.0,),
              title: HelperText().helperText(text: "Privacy Policy", fontSize: 14.0,textColor: whiteColor,fontWeight: FontWeight.bold),
              trailing: IconButton(onPressed: (){Get.to(PrivacyAndPolicy().privacyAndPolicy());}, icon: Icon(Icons.arrow_forward_ios_outlined,color: whiteColor,size: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
