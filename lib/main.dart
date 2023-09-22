import 'package:flutter/material.dart';
import 'package:flutter_application_1/AddtoCard.dart';
import 'package:flutter_application_1/Cartdata.dart';
import 'package:flutter_application_1/Screens/Favourite_Screen.dart';

import 'package:flutter_application_1/SplashScreen/Startup_Screen1.dart';
import 'package:flutter_application_1/Widgets/custom_Button.dart';
import 'package:flutter_application_1/Function/AddtoCartlogic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: StartupScreen1());
  }
}
