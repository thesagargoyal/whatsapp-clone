import 'package:chat_application/presentation/screens/splash_screen.dart';
import 'package:chat_application/presentation/widgets/theme/style.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat Application",
      theme: ThemeData(
        primaryColor: primaryColor
      ),
      home:SplashScreen(),
    );
  }
}



