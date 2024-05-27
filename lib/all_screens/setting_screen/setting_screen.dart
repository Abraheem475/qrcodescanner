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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CustomAppBar().customAppBar(text: "Setting Screen", isIcon: false),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(PrivacyAndPolicy().privacyAndPolicy());
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      gradient: gradientColor,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      // tileColor: appColor,
                      leading: Icon(
                        Icons.privacy_tip_outlined,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      title: HelperText().helperText(
                          text: "Privacy Policy",
                          fontSize: 14.0,
                          textColor: whiteColor,
                          fontWeight: FontWeight.bold),

                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
