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
    apiKey: 'AIzaSyBPvhu4TqbBIZvrTjJpd94c6d0FD_DiXqs',
    appId: '1:729459310329:web:313c8608b6b7bfb61aec28',
    messagingSenderId: '729459310329',
    projectId: 'simplified-ordering-system',
    authDomain: 'simplified-ordering-system.firebaseapp.com',
    databaseURL: 'https://simplified-ordering-system-default-rtdb.firebaseio.com',
    storageBucket: 'simplified-ordering-system.appspot.com',
    measurementId: 'G-8M6QRCMJYN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfT_7V9laOVbeMZMbMwn8DCBo_Y-1TsrY',
    appId: '1:729459310329:android:60d4942089d3ffdd1aec28',
    messagingSenderId: '729459310329',
    projectId: 'simplified-ordering-system',
    databaseURL: 'https://simplified-ordering-system-default-rtdb.firebaseio.com',
    storageBucket: 'simplified-ordering-system.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB9epC7o3zUB3Owx7LGGuVmi3QI1N88EaY',
    appId: '1:729459310329:ios:bc4a627f4a93f47b1aec28',
    messagingSenderId: '729459310329',
    projectId: 'simplified-ordering-system',
    databaseURL: 'https://simplified-ordering-system-default-rtdb.firebaseio.com',
    storageBucket: 'simplified-ordering-system.appspot.com',
    iosClientId: '729459310329-968e1hf7ti9sfq28u97ummq0dp27l329.apps.googleusercontent.com',
    iosBundleId: 'com.example.cashRegisterApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB9epC7o3zUB3Owx7LGGuVmi3QI1N88EaY',
    appId: '1:729459310329:ios:853a0f487ae52b591aec28',
    messagingSenderId: '729459310329',
    projectId: 'simplified-ordering-system',
    databaseURL: 'https://simplified-ordering-system-default-rtdb.firebaseio.com',
    storageBucket: 'simplified-ordering-system.appspot.com',
    iosClientId: '729459310329-t4bkevoh23ubmm6rtr5ku3fav60bep6i.apps.googleusercontent.com',
    iosBundleId: 'com.example.cashRegisterApp.RunnerTests',
  );
}
