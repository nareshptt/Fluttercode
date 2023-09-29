

import 'package:flutter/material.dart';

class Not extends StatefulWidget {
  const Not({super.key});

  @override
  State<Not> createState() => _NotState();
}

class _NotState extends State<Not> {
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
      body:
      ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          final Color color = colors[index % colors.length];
          return Container(
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
