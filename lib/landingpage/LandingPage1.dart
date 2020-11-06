import 'package:flutter/material.dart';

class LandingPage1 extends StatefulWidget {
  @override
  _LandingPage1State createState() => _LandingPage1State();
}

class _LandingPage1State extends State<LandingPage1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Page 1", style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
