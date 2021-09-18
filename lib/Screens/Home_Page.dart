import 'package:flutter/material.dart';
import 'package:petapp/Screens/Drawer_Screen.dart';
import 'package:petapp/Screens/Home_Screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
