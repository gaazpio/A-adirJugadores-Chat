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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAEdSX4bSlk6PBQqC8YdTlOKwdtysMj54I',
    appId: '1:715790805647:web:acb8f333d7e90ea95f5efa',
    messagingSenderId: '715790805647',
    projectId: 'examengzp',
    authDomain: 'examengzp.firebaseapp.com',
    storageBucket: 'examengzp.appspot.com',
    measurementId: 'G-GCJ4QNGB1C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-f41PUuh6jiIap2KC7Kk9dMw6ZiXdU8k',
    appId: '1:715790805647:android:4548208f2723f31d5f5efa',
    messagingSenderId: '715790805647',
    projectId: 'examengzp',
    storageBucket: 'examengzp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBbNwoZeFTgHnD2eCQW8ABUw6cnSWoX0wg',
    appId: '1:715790805647:ios:5d6811c0ca9122655f5efa',
    messagingSenderId: '715790805647',
    projectId: 'examengzp',
    storageBucket: 'examengzp.appspot.com',
    iosClientId: '715790805647-tpgf800vg4bpvlr9a887k1pv5eg7aaus.apps.googleusercontent.com',
    iosBundleId: 'com.example.examenDavidGazpio',
  );
}
