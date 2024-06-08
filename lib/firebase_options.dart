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
    apiKey: 'AIzaSyCd7IVUKoWtwjfehnSkqjA1InrBy0W9T-A',
    appId: '1:296655491133:web:4bea922cc2226b60df5a54',
    messagingSenderId: '296655491133',
    projectId: 'feedbackapplication-496b2',
    authDomain: 'feedbackapplication-496b2.firebaseapp.com',
    storageBucket: 'feedbackapplication-496b2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDL3X-sfHKnLgymRm7OTumS9yVv2azLNhM',
    appId: '1:296655491133:android:1ae4bf27d77609f0df5a54',
    messagingSenderId: '296655491133',
    projectId: 'feedbackapplication-496b2',
    storageBucket: 'feedbackapplication-496b2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDwcBPmXoB7sTWSWjBCqQ3ZBJoBaajMsPo',
    appId: '1:296655491133:ios:87f30fdb1148199ddf5a54',
    messagingSenderId: '296655491133',
    projectId: 'feedbackapplication-496b2',
    storageBucket: 'feedbackapplication-496b2.appspot.com',
    iosBundleId: 'com.example.feedbackAndRatingApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDwcBPmXoB7sTWSWjBCqQ3ZBJoBaajMsPo',
    appId: '1:296655491133:ios:87f30fdb1148199ddf5a54',
    messagingSenderId: '296655491133',
    projectId: 'feedbackapplication-496b2',
    storageBucket: 'feedbackapplication-496b2.appspot.com',
    iosBundleId: 'com.example.feedbackAndRatingApplication',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCd7IVUKoWtwjfehnSkqjA1InrBy0W9T-A',
    appId: '1:296655491133:web:4aeb1eafa02d6052df5a54',
    messagingSenderId: '296655491133',
    projectId: 'feedbackapplication-496b2',
    authDomain: 'feedbackapplication-496b2.firebaseapp.com',
    storageBucket: 'feedbackapplication-496b2.appspot.com',
  );
}
