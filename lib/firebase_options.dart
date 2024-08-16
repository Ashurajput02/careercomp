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
    apiKey: 'AIzaSyDtmcbHMjf0IQi4o0qZBCK-6t6xggCkYP4',
    appId: '1:724234866853:web:f5a030d34a4b5be7ddbd4c',
    messagingSenderId: '724234866853',
    projectId: 'locationtrackingtest-64e15',
    authDomain: 'locationtrackingtest-64e15.firebaseapp.com',
    storageBucket: 'locationtrackingtest-64e15.appspot.com',
    measurementId: 'G-8PR0E3BEXG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD3_gvAnOTmaN2vSsEifstKLzHIM25LFeY',
    appId: '1:724234866853:android:f087263d6db6b2deddbd4c',
    messagingSenderId: '724234866853',
    projectId: 'locationtrackingtest-64e15',
    storageBucket: 'locationtrackingtest-64e15.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAL0G0FRowzpU_nkHxCcxZVx-iAzpgQgY0',
    appId: '1:724234866853:ios:b9989b2e360383b3ddbd4c',
    messagingSenderId: '724234866853',
    projectId: 'locationtrackingtest-64e15',
    storageBucket: 'locationtrackingtest-64e15.appspot.com',
    androidClientId: '724234866853-if3j9nn3sjcr1omcmd3gcmc1v7g54umk.apps.googleusercontent.com',
    iosClientId: '724234866853-rlen77fh2rh97ud93vb67ih0s6vhfm2j.apps.googleusercontent.com',
    iosBundleId: 'com.example.thecareercompany',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAL0G0FRowzpU_nkHxCcxZVx-iAzpgQgY0',
    appId: '1:724234866853:ios:b9989b2e360383b3ddbd4c',
    messagingSenderId: '724234866853',
    projectId: 'locationtrackingtest-64e15',
    storageBucket: 'locationtrackingtest-64e15.appspot.com',
    androidClientId: '724234866853-if3j9nn3sjcr1omcmd3gcmc1v7g54umk.apps.googleusercontent.com',
    iosClientId: '724234866853-rlen77fh2rh97ud93vb67ih0s6vhfm2j.apps.googleusercontent.com',
    iosBundleId: 'com.example.thecareercompany',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDtmcbHMjf0IQi4o0qZBCK-6t6xggCkYP4',
    appId: '1:724234866853:web:7d3352f7b2e9de77ddbd4c',
    messagingSenderId: '724234866853',
    projectId: 'locationtrackingtest-64e15',
    authDomain: 'locationtrackingtest-64e15.firebaseapp.com',
    storageBucket: 'locationtrackingtest-64e15.appspot.com',
    measurementId: 'G-04HQ5TZ4HJ',
  );
}
