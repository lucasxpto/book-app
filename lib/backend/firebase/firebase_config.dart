import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCR0zQjfj1Rw3qG6zJmMqB_dj4OFTjtUGY",
            authDomain: "bookbuddy-ifro.firebaseapp.com",
            projectId: "bookbuddy-ifro",
            storageBucket: "bookbuddy-ifro.appspot.com",
            messagingSenderId: "783212613290",
            appId: "1:783212613290:web:9883459b84af436341cad3"));
  } else {
    await Firebase.initializeApp();
  }
}
