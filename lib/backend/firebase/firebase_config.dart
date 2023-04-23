import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCQiFC5b0rm1dme33Vk1U3l5jRG66VshXE",
            authDomain: "rsa3-a2ecf.firebaseapp.com",
            projectId: "rsa3-a2ecf",
            storageBucket: "rsa3-a2ecf.appspot.com",
            messagingSenderId: "672576347503",
            appId: "1:672576347503:web:ebafec15e022eab3ef5c9a",
            measurementId: "G-PPSFR2HS0P"));
  } else {
    await Firebase.initializeApp();
  }
}
