import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:semesterproject/screens/login_screen.dart';
import 'constatnt.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Semester Project',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        secondaryHeaderColor: kAccentColor,
        fontFamily: "PlayFair",
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
