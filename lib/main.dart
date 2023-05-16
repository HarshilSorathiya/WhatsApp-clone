import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/features/landing/Screens/landing_screen.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/responsive/responsive_layout.dart';

import 'firebase_options.dart';
import 'mobile_screen_layout.dart';
import 'web_screen_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp UI",
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      debugShowCheckedModeBanner: false,
      home:
          //  LandingScreen()
          ResponsiveApp(
              webScreenLayout: WebScreenLayout(),
              mobileScreenLayout: MobileScreenLayout()),
    );
  }
}
