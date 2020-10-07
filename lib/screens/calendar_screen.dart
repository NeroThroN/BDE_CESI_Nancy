import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  static const String routeName = '/Calendar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CalendarScreen")),
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text("CalendarScreen"),
      ),
    );
  }
}
