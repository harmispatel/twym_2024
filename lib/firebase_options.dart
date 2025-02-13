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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrFgGr8-QaZhUrWQF3lIny7FgrZblWGMk',
    appId: '1:919834426763:android:053c5935e55e2dfa67438e',
    messagingSenderId: '919834426763',
    projectId: 'activeecommerce-8ec99',
    databaseURL: 'https://activeecommerce-8ec99-default-rtdb.firebaseio.com',
    storageBucket: 'activeecommerce-8ec99.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDd96o6GLTV1vAqVwNM9Np7dMu7BJbemcc',
    appId: '1:919834426763:ios:4a409d6e0661191f67438e',
    messagingSenderId: '919834426763',
    projectId: 'activeecommerce-8ec99',
    databaseURL: 'https://activeecommerce-8ec99-default-rtdb.firebaseio.com',
    storageBucket: 'activeecommerce-8ec99.appspot.com',
    iosBundleId: 'com.harmis.ayodhya.ayodhyaRamMandir',
  );
}
