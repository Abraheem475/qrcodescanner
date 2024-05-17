import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class QRProviderScanner with ChangeNotifier{
  String? _data = "Result wil be show here ";

  get data => _data;

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
        _data = barcodeScanRes.toString();
        notifyListeners();
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
      notifyListeners();
    }
  }
}