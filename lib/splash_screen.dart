import 'package:api/weather_screen.dart';
import 'package:flutter/material.dart';

class SplashSreen extends StatelessWidget {
  const SplashSreen({super.key});

  Future<void> navigateToHome(BuildContext context) async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => WeatherScreen()));
  }

  @override
  Widget build(BuildContext context) {
    navigateToHome(context);
    return Scaffold(
      body: Center(child: Image.asset("assets/Weather.png")),
    );
  }
}
