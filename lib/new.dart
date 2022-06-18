import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';


class HomeCtScreen extends StatefulWidget {
  @override
  _HomeCtScreenState createState() => _HomeCtScreenState();
}

class _HomeCtScreenState extends State<HomeCtScreen> {
  int _currentIndex = 0;
  List _screens = [
     HomeScreen(),
    // WishListScreen(),
    // StoreScreen(),
    // NotificationScreen(),
    // SettingScreen(),
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF1F6FB),
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        selectedItemColor: Color(0xFF031420),
        iconSize: 20,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.home, size: 20),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset("assets/images/bookmark.png", height: 17, width: 20,),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset("assets/images/send.png", height: 17, width: 20,),
          ),


          BottomNavigationBarItem(
            label: "",
            icon: Image.asset("assets/images/setting.png", height: 17, width: 20,),
          ),
        ],
      ),
    );
  }
}