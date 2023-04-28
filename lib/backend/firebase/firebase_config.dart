import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAzXcnkN5fcdARhhOZ9-hc-K14sG9E3sxE",
            authDomain: "rsa4-a4195.firebaseapp.com",
            projectId: "rsa4-a4195",
            storageBucket: "rsa4-a4195.appspot.com",
            messagingSenderId: "934352288228",
            appId: "1:934352288228:web:662c7023928d3d1777eff1",
            measurementId: "G-0TGYY6E839"));
  } else {
    await Firebase.initializeApp();
  }
}
