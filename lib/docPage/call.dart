import 'package:flutter/material.dart';
import 'package:grid/strings/docStrings.dart';
import 'package:lottie/lottie.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: RichText(
        text: TextSpan(style: myStyle(26, primaryColor, FontWeight.bold),
            children: [
              TextSpan(text: "Bhutanese",),
              TextSpan(text: "Care", style: myStyle(26, secondaryColor, FontWeight.bold)),
              TextSpan(text: "+", style: myStyle(26, primaryColor, FontWeight.bold),),
            ]),
      ),
        centerTitle: true,
        actions: [Icon(Icons.more_vert_outlined)],),
      
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Center(child: Lottie.asset('assets/animations/calling.json')),
          ),
          Column(
            children: [
              Text('Ringing', style: myStyle(25),)
            ],
          )
        ],
      ),
    );
  }
}
