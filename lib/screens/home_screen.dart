import 'package:flutter/material.dart';
import 'package:ui_design_1/screens/page1.dart';
import 'package:ui_design_1/screens/page2.dart';
import 'package:ui_design_1/widgets/bottom_navigation.dart';
import 'package:ui_design_1/widgets/header_appbar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          HeaderAppbar(deviceSize: deviceSize),
          selectedIndex == 0
              ? Page1(deviceSize: deviceSize)
              : Page2(
                  deviceSize: deviceSize,
                ),
          BottomNavigationBarCustom(
            deviceSize: deviceSize,
            selectedIndex: selectedIndex,
            onTap: (index) => setState(() => selectedIndex = index),
          ),
        ],
      ),
    );
  }
}
