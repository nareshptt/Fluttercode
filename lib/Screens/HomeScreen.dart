

import 'package:flutter/material.dart';
import 'package:flutterapp/Bottomnavigation/Done.dart';

import '../Bottomnavigation/Home.dart';
import '../Bottomnavigation/Profile.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _pagedata = [Home(),Not(),Profile(),];
  int _Selecteditem=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

          currentIndex: _Selecteditem,
          onTap: (p){
            setState(() {
              _Selecteditem= p;

            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.cloud_done_sharp), label: "Done"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
      body: Center(
        child: _pagedata[_Selecteditem],
      ),
    );
  }
}
