import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:proyecto_final/src/pages/blog_page.dart';
import 'package:proyecto_final/src/pages/contact.dart';
import 'Package:proyecto_final/src/pages/splash_page.dart';
import 'package:proyecto_final/src/pages/first_page.dart';
import 'package:proyecto_final/src/pages/card_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    'splash': (context) => SplashPage(),
    'barber': (context) => FirstPage(),
    'blog': (context) => BlogPages(),
    'contact': (context) => ContactPages(),
    'card': (context) => Card()
  };
}
