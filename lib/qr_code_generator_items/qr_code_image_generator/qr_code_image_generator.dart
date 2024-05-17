import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrcodescanner/helper_classes/custom_appbar_class/custom_appbar_class.dart';
import '../../provider_classes/qr_code_image_generator_provider/qr_code_image_generator_provider.dart';

class QRCodeGeneratorImage extends StatelessWidget {
  const QRCodeGeneratorImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar().customAppBar(Icons.arrow_back, "Generate QR Code"),
      body: Center(
        child: Consumer<ProviderImage>(
          builder: (context, value, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (value.imageUrl.isNotEmpty)
                  QrImageView(
                    data: value.imageUrl,
                    size: 200.0,
                  ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    value.getImage();
                  },
                  child: const Text("Pick Image and Generate QR Code"),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
