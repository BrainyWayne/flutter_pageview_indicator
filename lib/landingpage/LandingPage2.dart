import 'package:flutter/material.dart';

class LandingPage2 extends StatefulWidget {
  @override
  _LandingPage2State createState() => _LandingPage2State();
}

class _LandingPage2State extends State<LandingPage2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Page 2", style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
