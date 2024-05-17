import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

class ProviderImage with ChangeNotifier {
  String _imageUrl = "";
  File? _image;

  String get imageUrl => _imageUrl;
  File? get image => _image;

  final picker = ImagePicker();

  Future<void> getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile == null) return;

    String uniqueFileName = DateTime.now().microsecondsSinceEpoch.toString();
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImage = referenceRoot.child("images");
    Reference referenceImageToUpload = referenceDirImage.child(uniqueFileName);

    try {
      await referenceImageToUpload.putFile(File(pickedFile.path));
      _imageUrl = await referenceImageToUpload.getDownloadURL();
      _image = File(pickedFile.path);
    } catch (error) {
      print("Error uploading image: $error");
    }

    notifyListeners();
  }
}
