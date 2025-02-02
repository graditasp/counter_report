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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCxsX6sXx5TJOVhxJQ9GuHlW9z8K8yu3h4',
    appId: '1:27748280559:web:1f8f97ad42bfa4aabe931a',
    messagingSenderId: '27748280559',
    projectId: 'esp32-firebase-demo-8c5dd',
    authDomain: 'esp32-firebase-demo-8c5dd.firebaseapp.com',
    databaseURL: 'https://esp32-firebase-demo-8c5dd-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'esp32-firebase-demo-8c5dd.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCF5Yt1nY4h1iA1u4G7AHhZOJr40_qqWKg',
    appId: '1:27748280559:android:33a0d57fa905cefcbe931a',
    messagingSenderId: '27748280559',
    projectId: 'esp32-firebase-demo-8c5dd',
    databaseURL: 'https://esp32-firebase-demo-8c5dd-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'esp32-firebase-demo-8c5dd.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCxsX6sXx5TJOVhxJQ9GuHlW9z8K8yu3h4',
    appId: '1:27748280559:web:884975e0b5cbeed3be931a',
    messagingSenderId: '27748280559',
    projectId: 'esp32-firebase-demo-8c5dd',
    authDomain: 'esp32-firebase-demo-8c5dd.firebaseapp.com',
    databaseURL: 'https://esp32-firebase-demo-8c5dd-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'esp32-firebase-demo-8c5dd.firebasestorage.app',
  );

}