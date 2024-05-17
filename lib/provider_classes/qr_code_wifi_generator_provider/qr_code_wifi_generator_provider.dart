import 'package:flutter/cupertino.dart';

class WifiProvider with ChangeNotifier {

  var _valueQr;
  String _dropValue = "WPA";
  TextEditingController _nameNetController = TextEditingController();
  TextEditingController _passNetController = TextEditingController();
  TextEditingController _secNetController = TextEditingController();

  get valueQr => _valueQr;
  get dropValue => _dropValue;
  TextEditingController get nameNetController => _nameNetController;
  TextEditingController get passNetController => _passNetController;
  TextEditingController get secNetController => _secNetController;

  void getValue(){
    String red = 'WIFI:S:${_nameNetController.text};T:${_secNetController.text};P:${_passNetController.text};H:True;;';
    _valueQr = red;
    notifyListeners();
      }
}