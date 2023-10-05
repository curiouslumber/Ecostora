import 'package:ecostore/ViewModel/controller.dart';
import 'package:ecostore/Views/Home/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final c = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
        c.isAccount.value = true;
        c.signedIn.value = true;
      }
    });

    return Sizer(builder: (context, orientation, deviceType) {
      const seedColor = Color(0xff128C7E);
      final colorScheme = ColorScheme.fromSeed(
        seedColor: seedColor,
        brightness: Brightness.light,
      );

      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorScheme: colorScheme),
        home: HomePage(),
      );
    });
  }
}
