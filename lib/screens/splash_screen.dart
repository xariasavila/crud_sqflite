import 'package:crud_sqlite_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      duration: 300,
      imageSize: 200,
      text: "Splash screen o login??? \n\n\n .....",
      textStyle: const TextStyle(
        color: Colors.deepPurple,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      navigateRoute: const HomeScreen(),
      backgroundColor: Colors.white,
      textType: TextType.TyperAnimatedText,
    );
  }
}
