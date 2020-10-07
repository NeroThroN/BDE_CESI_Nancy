import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/Login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LoginScreen")),
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          children: [
            Text("LoginScreen"),
            RaisedButton(
              child: Text('SignOut'),
              onPressed: () {
                Get.toNamed('/');
              },
            )
          ],
        ),
      ),
    );
  }
}
