
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paepad_project/constants.dart';
import 'firebaseAuthDemo.dart';
import 'package:flutter/widgets.dart';
import 'package:paepad_project/Screens/Welcome/welcome_screen.dart';
import 'package:paepad_project/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}