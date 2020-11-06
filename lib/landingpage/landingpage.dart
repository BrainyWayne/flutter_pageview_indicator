import 'package:flutter/material.dart';

import 'LandingPage1.dart';
import 'LandingPage2.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  PageController controller = new PageController();
  double currentPage;
  List pageLists;
  int currentIndex;
  Color container1 = Colors.green;
  Color container2 = Colors.grey;

  @override
  void initState() {
    controller.addListener((){
      setState(() {
        currentPage = controller.page;
      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              LandingPage1(),
              LandingPage2()
            ],
          ),
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: (currentPage == 0 || currentPage == null) ? Colors.green : Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(50)
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      color: currentPage == 1 ? Colors.green : Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < pageLists.length; i++) {
      list.add(i == currentIndex ? indicator(true) : indicator(false));
    }
    return list;
  }

  Widget indicator(bool isActive) {
    return Container(
      height: 10,
      child: AnimatedContainer(

        duration: Duration(milliseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        height: isActive
            ? 10:8.0,
        width: isActive
            ? 12:8.0,
        decoration: BoxDecoration(
          boxShadow: [
            isActive
                ? BoxShadow(
              color: Color(0XFF2FB7B2).withOpacity(0.72),
              blurRadius: 4.0,
              spreadRadius: 1.0,
              offset: Offset(
                0.0,
                0.0,
              ),
            )
                : BoxShadow(
              color: Colors.transparent,
            )
          ],
          shape: BoxShape.circle,
          color: isActive ? Color(0XFF6BC4C9) : Color(0XFFEAEAEA),
        ),
      ),
    );
  }
}
