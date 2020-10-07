import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  static const String routeName = '/Messages';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MessagesScreen")),
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text("MessagesScreen"),
      ),
    );
  }
}
