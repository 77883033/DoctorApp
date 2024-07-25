
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:grid/data/data.dart';
import 'package:grid/docPage/call.dart';
import 'package:grid/docPage/doc%20page.dart';
import 'package:grid/doctorsDetails.dart';

class buttomnavbar extends StatefulWidget {
  const buttomnavbar({super.key});

  @override
  State<buttomnavbar> createState() => _buttomnavbarState();
}

class _buttomnavbarState extends State<buttomnavbar> {
  List list = [
    doctor(),
    DocDetails(doctorModel: allDocs[0]),
    Call(),
  ];

  List<Icon> allItems = [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.call),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      list[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        maxWidth: double.infinity,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationDuration: Durations.extralong2,
        index: _currentIndex,
        onTap: (int index) {
          _currentIndex = index;
          setState(() {});
        },
        items: allItems,
      ),
    );
  }
}
