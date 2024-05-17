import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:qrcodescanner/all_screens/setting_screen/setting_screen.dart';
import 'package:qrcodescanner/provider_classes/qr_scanner_provider_class/qr_scanner_provider_class.dart';
import 'package:qrcodescanner/qr_code_generator_items/qr_code_generator_items.dart';
import '../../helper_classes/colors_classes.dart';
import '../../qr_code_scanner_screen/qr_code_scanner_screen.dart';

class NarBarScreen extends StatefulWidget {
  const NarBarScreen({super.key});

  @override
  State<NarBarScreen> createState() => _NarBarScreenState();
}

class _NarBarScreenState extends State<NarBarScreen> {
  int myIndex = 0;

  List<Widget>myList = [
    const QRCodeGeneratorItems(),
    const SettingScreen(),
    // const QRCodeScanner(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: myList[myIndex],
        bottomNavigationBar: BottomAppBar(
          height: 85.0,
          color: whiteColor,
          elevation: 0.0,
          shape:  const CircularNotchedRectangle(),
          notchMargin: 0.01,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.green,
                border: Border(
                    top: BorderSide(
                      color: Colors.grey,
                      width: 0.1,
                    )
                )
            ),
            child: BottomNavigationBar(
                selectedItemColor: appColor,
                unselectedItemColor: Colors.grey,
                onTap: (index){
                  setState(() {
                    myIndex = index;
                  });
                },
                currentIndex: myIndex,
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.home_filled,),label: "Home"),
                  // BottomNavigationBarItem(activeIcon: null, icon: Icon(null),label: ""),
                  BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
                ]),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: Consumer<QRProviderScanner>(
            builder: (context, value, child) {
              Provider.of<QRProviderScanner>(context, listen: false);
              return FloatingActionButton(
                onPressed: () {
                  // myIndex = 2;
                  // value.scanBarcodeNormal();
                  Get.to(() => const QRCodeScanner());
                },
                hoverElevation: 10.0,
                splashColor: Colors.grey,
                child: const Icon(Icons.qr_code, size: 40.0),
              );
            }
        )
    );
  }
}
