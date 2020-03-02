import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepOrange,
      child: Center(
        child: Text(
          sayHello(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.amber, fontSize: 36.0),
        ),
      ),
    );
  }

  String sayHello() {
    String welcomeText;
    DateTime now = new DateTime.now();
    int hour = now.hour;
    if (hour < 12) {
      welcomeText = "Good Morning!";
    } else if (hour < 18) {
      welcomeText = "Good Afternoon!";
    } else {
      welcomeText = "Good Evening!";
    }
    return welcomeText;
  }
}
