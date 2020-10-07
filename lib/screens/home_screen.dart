import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomeScreen")),
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          children: [
            Text("HomeScreen"),
            RaisedButton(
              child: Text('Login'),
              onPressed: () {
                Get.toNamed('/Login');
              },
            )
          ],
        ),
      ),
    );
  }
}
