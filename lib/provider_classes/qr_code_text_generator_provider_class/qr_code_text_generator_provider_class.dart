import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeTextGeneratorProvider with ChangeNotifier{
  final TextEditingController _urlController = TextEditingController();
  late Widget _qrImage = Container();

  TextEditingController get urlController => _urlController;
  Widget get qrImage => _qrImage;

  void textGenerator(){
    if(_urlController.text.isNotEmpty) {
      _qrImage = QrImageView(data: urlController.text,size: 200.0,);
    }else {
      _qrImage = Container();
    }
   notifyListeners();
  }
}