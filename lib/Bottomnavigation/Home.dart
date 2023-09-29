
import 'dart:ffi';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          final Color color = colors[index % colors.length];
          return Container(
            width: 40,
            height: 150,
            margin: EdgeInsets.all(3),
            color: color,
            child: Center(
              child: Text('Item ${index + 1}',style: TextStyle(fontSize: 20),),
            ),
          );
        },
      ),

    );
  }
}



