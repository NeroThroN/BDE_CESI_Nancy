import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  static const String routeName = '/Shop';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ShopScreen")),
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text("ShopScreen"),
      ),
    );
  }
}
