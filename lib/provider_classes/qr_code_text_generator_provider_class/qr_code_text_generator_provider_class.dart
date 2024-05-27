import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeTextGeneratorProvider with ChangeNotifier{
   var _textData ;
  late Widget _qrImage = Container();

  get textData => _textData;
  Widget get qrImage => _qrImage;

  void textGenerator(){
    if(_textData.text.isNotEmpty) {
      _qrImage = QrImageView(data: _textData.text,size: 200.0,);
    }else {
      _qrImage = Container();
    }
   notifyListeners();
  }
}