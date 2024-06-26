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
    apiKey: 'AIzaSyDKXNeCmpMigVABQAC7_7X30FCCJQDQiUc',
    appId: '1:800049723897:web:758013b4d40cf0070a2528',
    messagingSenderId: '800049723897',
    projectId: 'pairr-socialmedia',
    authDomain: 'pairr-socialmedia.firebaseapp.com',
    storageBucket: 'pairr-socialmedia.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3-KW5w2paaGUGhqMpfT1UepGYbtXoInQ',
    appId: '1:800049723897:android:51d13e821dd017070a2528',
    messagingSenderId: '800049723897',
    projectId: 'pairr-socialmedia',
    storageBucket: 'pairr-socialmedia.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-ZerQkeKOymi87Tf-LOI6AvqJjdvhlV0',
    appId: '1:800049723897:ios:745d08381ca93d210a2528',
    messagingSenderId: '800049723897',
    projectId: 'pairr-socialmedia',
    storageBucket: 'pairr-socialmedia.appspot.com',
    iosBundleId: 'com.example.pairr',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA-ZerQkeKOymi87Tf-LOI6AvqJjdvhlV0',
    appId: '1:800049723897:ios:534ef2a2928ebb870a2528',
    messagingSenderId: '800049723897',
    projectId: 'pairr-socialmedia',
    storageBucket: 'pairr-socialmedia.appspot.com',
    iosBundleId: 'com.example.pairr.RunnerTests',
  );
}
