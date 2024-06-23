import 'package:flutter/material.dart';
import 'package:flutter_app_practice/src/page/first_page.dart';
import 'package:flutter_app_practice/src/page/profile_page.dart';
import 'package:flutter_app_practice/src/page/setting_page.dart';
import 'package:flutter_app_practice/src/page/home_page.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      routes: {
        '/profile_page': (context) => ProfilePage(),
        '/settings_page': (context) => SettingsPage(),
        '/home_page': (context) => HomePage()
      },
    );
  }
}

