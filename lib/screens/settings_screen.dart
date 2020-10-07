import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = '/Settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SettingsScreen")),
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text("SettingsScreen"),
      ),
    );
  }
}
