import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wasillay/screens/sign_in_screen.dart';
import 'package:wasillay/utils/color_themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBq8GHzcIwjtku3hUFQ8cRcc9912lMFR9w",
            authDomain: "wasillayfinal.firebaseapp.com",
            projectId: "wasillayfinal",
            storageBucket: "wasillayfinal.appspot.com",
            messagingSenderId: "865785075294",
            appId: "1:865785075294:web:420e879b4b2c2334ae46cf"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const Wasillay());
}

class Wasillay extends StatelessWidget {
  const Wasillay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Waillay",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const SignInScreen(),
    );
  }
}
