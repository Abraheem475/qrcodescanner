import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:qrcodescanner/all_screens/narbar_screen/narbar_screen.dart';
import 'package:qrcodescanner/all_screens/onboarging_screen/onboarding_screen.dart';
import 'package:qrcodescanner/all_screens/onboarging_screen/onboarding_screen_three.dart';
import 'package:qrcodescanner/all_screens/onboarging_screen/onboarging_screen_two.dart';
import 'package:qrcodescanner/helper_classes/colors_classes.dart';
import 'package:qrcodescanner/provider_classes/navbar_provider.dart';
import 'package:qrcodescanner/provider_classes/qr_code_image_generator_provider/qr_code_image_generator_provider.dart';
import 'package:qrcodescanner/provider_classes/qr_code_text_generator_provider_class/qr_code_text_generator_provider_class.dart';
import 'package:qrcodescanner/provider_classes/qr_code_wifi_generator_provider/qr_code_wifi_generator_provider.dart';
import 'package:qrcodescanner/provider_classes/qr_scanner_provider_class/qr_scanner_provider_class.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:qrcodescanner/provider_classes/website_provider.dart';
import 'all_screens/onboarging_screen/onboarding_screen_main.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> QRProviderScanner()),
      ChangeNotifierProvider(create: (_)=> QRCodeTextGeneratorProvider()),
      ChangeNotifierProvider(create: (_)=> ProviderImage()),
      ChangeNotifierProvider(create: (_)=> WifiProvider()),
      ChangeNotifierProvider(create: (_)=> BottomBarProvider()),
      ChangeNotifierProvider(create: (_)=> WebsiteProvider()),

    ],child: GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Code Scanner',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: appColor,primary:appColor),
        useMaterial3: true,
      ),
      home:  OnBoardingScreenMain(),
    ),);
  }
}
