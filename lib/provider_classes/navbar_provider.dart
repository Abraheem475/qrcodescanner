import 'package:flutter/material.dart';

import '../all_screens/setting_screen/setting_screen.dart';
import '../qr_code_generator_items/qr_code_generator_items.dart';
import '../qr_code_scanner_screen/qr_code_scanner_screen.dart';

class BottomBarProvider with ChangeNotifier {
  int _myIndex = 0;
  List<Widget> _myList = [
    const QRCodeGeneratorItems(),
    const QRCodeScanner(),
    const SettingScreen(),
  ];

  int get myIndex => _myIndex;
  List<Widget> get myList => _myList;

  void changeMyList(List<Widget> list) {
    _myList = list;
    notifyListeners();
  }

  void changeMyIndex(int index) {
    _myIndex = index;
    notifyListeners();
  }
}
