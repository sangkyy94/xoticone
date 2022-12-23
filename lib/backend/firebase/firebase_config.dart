import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD095xxmS8R_wCLX_um8d3CRgo-UNX-VaA",
            authDomain: "xoticonev2.firebaseapp.com",
            projectId: "xoticonev2",
            storageBucket: "xoticonev2.appspot.com",
            messagingSenderId: "603108533490",
            appId: "1:603108533490:web:c6220d998d11cd48d85c6b",
            measurementId: "G-BXK75DXRWZ"));
  } else {
    await Firebase.initializeApp();
  }
}
