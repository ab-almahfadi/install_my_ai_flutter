import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyALzUpeeT1rJ78-pf99cYdziKQe-Obe0JE",
            authDomain: "install-my-a-i-k1qs6w.firebaseapp.com",
            projectId: "install-my-a-i-k1qs6w",
            storageBucket: "install-my-a-i-k1qs6w.appspot.com",
            messagingSenderId: "458982370973",
            appId: "1:458982370973:web:961b1ca1d1857b0a75ae74"));
  } else {
    await Firebase.initializeApp();
  }
}
