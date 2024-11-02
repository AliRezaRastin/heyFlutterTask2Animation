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
    apiKey: 'AIzaSyCGOqwVlO-EJWwKrHb1S0YXUE1IrcoxKrU',
    appId: '1:445486064239:web:91ae06de73ad717b48a39a',
    messagingSenderId: '445486064239',
    projectId: 'fir-connectivity-7b30c',
    authDomain: 'fir-connectivity-7b30c.firebaseapp.com',
    storageBucket: 'fir-connectivity-7b30c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC20JvCrugFUuCOo53KeuRqY1cMa9sIalU',
    appId: '1:445486064239:android:413fddf3bc96ffa148a39a',
    messagingSenderId: '445486064239',
    projectId: 'fir-connectivity-7b30c',
    storageBucket: 'fir-connectivity-7b30c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCrZZX75gGBLxp2kum4_W0dU_Sc7k_x8WM',
    appId: '1:445486064239:ios:64149ca9ed8c400e48a39a',
    messagingSenderId: '445486064239',
    projectId: 'fir-connectivity-7b30c',
    storageBucket: 'fir-connectivity-7b30c.appspot.com',
    iosBundleId: 'com.example.project',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCrZZX75gGBLxp2kum4_W0dU_Sc7k_x8WM',
    appId: '1:445486064239:ios:64149ca9ed8c400e48a39a',
    messagingSenderId: '445486064239',
    projectId: 'fir-connectivity-7b30c',
    storageBucket: 'fir-connectivity-7b30c.appspot.com',
    iosBundleId: 'com.example.project',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCGOqwVlO-EJWwKrHb1S0YXUE1IrcoxKrU',
    appId: '1:445486064239:web:91ae06de73ad717b48a39a',
    messagingSenderId: '445486064239',
    projectId: 'fir-connectivity-7b30c',
    authDomain: 'fir-connectivity-7b30c.firebaseapp.com',
    storageBucket: 'fir-connectivity-7b30c.appspot.com',
  );

}