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
    apiKey: 'AIzaSyAwJ54YeT4lxM9i42XndcAwE44yGJwyai0',
    appId: '1:950765449414:web:ea0af8b61dc89c835b67c7',
    messagingSenderId: '950765449414',
    projectId: 'startplay',
    authDomain: 'startplay.firebaseapp.com',
    storageBucket: 'startplay.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD0NOrjkqYwkMjbjFkEfUOjBl3Oawz9H98',
    appId: '1:950765449414:android:260be8f01608dfed5b67c7',
    messagingSenderId: '950765449414',
    projectId: 'startplay',
    storageBucket: 'startplay.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD8ytoOCmDPbL0Dx0EDQPtMq20kT9Zqb6w',
    appId: '1:950765449414:ios:16016eb8cafd253c5b67c7',
    messagingSenderId: '950765449414',
    projectId: 'startplay',
    storageBucket: 'startplay.appspot.com',
    iosClientId: '950765449414-2mhu9ujfedfc2n8nfm2mg6nhl53jlj0f.apps.googleusercontent.com',
    iosBundleId: 'com.example.startplay',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD8ytoOCmDPbL0Dx0EDQPtMq20kT9Zqb6w',
    appId: '1:950765449414:ios:16016eb8cafd253c5b67c7',
    messagingSenderId: '950765449414',
    projectId: 'startplay',
    storageBucket: 'startplay.appspot.com',
    iosClientId: '950765449414-2mhu9ujfedfc2n8nfm2mg6nhl53jlj0f.apps.googleusercontent.com',
    iosBundleId: 'com.example.startplay',
  );
}
