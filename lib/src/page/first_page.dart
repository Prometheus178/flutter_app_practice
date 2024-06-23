import 'package:flutter/material.dart';
import 'package:flutter_app_practice/src/page/home_page.dart';
import 'package:flutter_app_practice/src/page/profile_page.dart';
import 'package:flutter_app_practice/src/page/setting_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
  @override
  State<FirstPage> createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  int selectedIndex = 0;

  void navigateBottomBar(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  final List pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First page")),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ],
      ),
    );
  }
}
