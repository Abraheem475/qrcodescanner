// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB6Z0zCmC3wkuaFfM3c3iAr5OkmLdql8jM',
    appId: '1:285057043309:web:5c7907ed777441f70e6864',
    messagingSenderId: '285057043309',
    projectId: 'qr-scanner-9c604',
    authDomain: 'qr-scanner-9c604.firebaseapp.com',
    storageBucket: 'qr-scanner-9c604.appspot.com',
    measurementId: 'G-J6S457NPZZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDeuYvadCzNp0YVXQpHfF2wvXBcBDA_VCc',
    appId: '1:285057043309:android:410e42d385bddbbf0e6864',
    messagingSenderId: '285057043309',
    projectId: 'qr-scanner-9c604',
    storageBucket: 'qr-scanner-9c604.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBY-Gc0ZJ0T3UUDc2O8Upvq9ItLwgS8yt0',
    appId: '1:285057043309:ios:46ea9d181f47299b0e6864',
    messagingSenderId: '285057043309',
    projectId: 'qr-scanner-9c604',
    storageBucket: 'qr-scanner-9c604.appspot.com',
    iosBundleId: 'com.solinovation.qrcodescanner',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBY-Gc0ZJ0T3UUDc2O8Upvq9ItLwgS8yt0',
    appId: '1:285057043309:ios:46ea9d181f47299b0e6864',
    messagingSenderId: '285057043309',
    projectId: 'qr-scanner-9c604',
    storageBucket: 'qr-scanner-9c604.appspot.com',
    iosBundleId: 'com.solinovation.qrcodescanner',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB6Z0zCmC3wkuaFfM3c3iAr5OkmLdql8jM',
    appId: '1:285057043309:web:70717d8081a47a840e6864',
    messagingSenderId: '285057043309',
    projectId: 'qr-scanner-9c604',
    authDomain: 'qr-scanner-9c604.firebaseapp.com',
    storageBucket: 'qr-scanner-9c604.appspot.com',
    measurementId: 'G-BTE84Q83D4',
  );

}