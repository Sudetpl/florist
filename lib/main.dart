import 'package:flutter/material.dart';
import 'package:florist/screens/aboutus.dart';
import 'package:florist/screens/firstscreen.dart';
import 'package:florist/screens/secondscreen.dart';
import 'package:florist/screens/helpscreen.dart';
import 'package:florist/screens/videopage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/" : (context) => const FirstScreen(),
        "/secondscreen" : (context) => const SecondScreen(),
        "/helpscreen" : (context) => const HelpScreen(),
        "/videopage" : (context) => const VideoPage(),
        "/aboutus" : (context) => const AboutUs(),
      },
    );
  }
}