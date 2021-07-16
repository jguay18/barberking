import 'dart:async';
import 'package:flutter/material.dart';
import 'package:proyecto_final/src/shared/preferences.dart';

class SplashPage extends StatelessWidget {
  final preferences = Preferences();

  @override
  Widget build(BuildContext context) {
    changeScreen(context);

    return Scaffold(
      body: Container(
        child: Center(
          child: Image(
            image: AssetImage('assets/img/splash.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  void changeScreen(BuildContext context) {
    print(preferences.token);
    final String routeName = preferences.token != '' ? 'barber' : 'barber';

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, routeName);
    });
  }
}
