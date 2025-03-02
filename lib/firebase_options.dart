// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCFAoF8xi5-bTkCt__J-DvVL6vGpuamIbk',
    appId: '1:51751474800:web:62c8c2a3077f78083d06b5',
    messagingSenderId: '51751474800',
    projectId: 'imageupload-f0791',
    authDomain: 'imageupload-f0791.firebaseapp.com',
    storageBucket: 'imageupload-f0791.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAPCrJPX-gAOPJh3uieBHkfqHWsSBZaX_Y',
    appId: '1:51751474800:android:e99a6e8d9e0b79933d06b5',
    messagingSenderId: '51751474800',
    projectId: 'imageupload-f0791',
    storageBucket: 'imageupload-f0791.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvXDN-QfRaA1Q0h0GlLxcV7x8rh0_0E6M',
    appId: '1:51751474800:ios:8b85c0a4757bb76f3d06b5',
    messagingSenderId: '51751474800',
    projectId: 'imageupload-f0791',
    storageBucket: 'imageupload-f0791.appspot.com',
    iosBundleId: 'com.example.firebaseOtp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCvXDN-QfRaA1Q0h0GlLxcV7x8rh0_0E6M',
    appId: '1:51751474800:ios:84bc0355e32ff73f3d06b5',
    messagingSenderId: '51751474800',
    projectId: 'imageupload-f0791',
    storageBucket: 'imageupload-f0791.appspot.com',
    iosBundleId: 'com.example.firebaseOtp.RunnerTests',
  );
}
