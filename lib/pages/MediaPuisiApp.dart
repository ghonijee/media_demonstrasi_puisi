import 'package:flutter/material.dart';
import 'package:media_puisi/pages/Bantuan.dart';
import 'package:media_puisi/pages/Home.dart';
import 'package:media_puisi/pages/Tentang.dart';
import 'package:media_puisi/styles/constanta.dart';

class MediaPuisiApp extends StatefulWidget {
  @override
  _MediaPuisiAppState createState() => _MediaPuisiAppState();
}

class _MediaPuisiAppState extends State<MediaPuisiApp> {
  int _selectedTabIndex = 0;

  void _onNavBarTap(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  final _listPage = [Home(), Bantuan(), Tentang()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1.0),
      body: _listPage.elementAt(_selectedTabIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.help), title: Text("Bantuan")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("Tentang")),
        ],
        currentIndex: _selectedTabIndex,
        onTap: _onNavBarTap,
        selectedItemColor: Color.fromRGBO(255, 203, 61, 1.0),
        unselectedItemColor: Colors.white,
        backgroundColor: PrimaryColor,
      ),
    );
  }
}
