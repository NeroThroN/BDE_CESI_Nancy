import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  static const String routeName = '/Account';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AccountScreen")),
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text("AccountScreen"),
      ),
    );
  }
}
