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
    apiKey: 'AIzaSyCwGBWU9rKWuuieRCCpnbcE0daKDWAsZME',
    appId: '1:673390397077:web:0095bb9e4c767decc13d9c',
    messagingSenderId: '673390397077',
    projectId: 'four-one-one-project',
    authDomain: 'four-one-one-project.firebaseapp.com',
    storageBucket: 'four-one-one-project.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB8C6h4zPZcSZcilYkBv7IaitQTd-EqQqg',
    appId: '1:673390397077:android:6268ce0ff2e11b19c13d9c',
    messagingSenderId: '673390397077',
    projectId: 'four-one-one-project',
    storageBucket: 'four-one-one-project.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBtv079FdG0ri_gCcoxf4xIuwgVod8dH7A',
    appId: '1:673390397077:ios:51b26fd4f4a9c5c5c13d9c',
    messagingSenderId: '673390397077',
    projectId: 'four-one-one-project',
    storageBucket: 'four-one-one-project.firebasestorage.app',
    iosBundleId: 'com.example.videoProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBtv079FdG0ri_gCcoxf4xIuwgVod8dH7A',
    appId: '1:673390397077:ios:51b26fd4f4a9c5c5c13d9c',
    messagingSenderId: '673390397077',
    projectId: 'four-one-one-project',
    storageBucket: 'four-one-one-project.firebasestorage.app',
    iosBundleId: 'com.example.videoProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCwGBWU9rKWuuieRCCpnbcE0daKDWAsZME',
    appId: '1:673390397077:web:d1f71ab05fe1cff1c13d9c',
    messagingSenderId: '673390397077',
    projectId: 'four-one-one-project',
    authDomain: 'four-one-one-project.firebaseapp.com',
    storageBucket: 'four-one-one-project.firebasestorage.app',
  );
}
