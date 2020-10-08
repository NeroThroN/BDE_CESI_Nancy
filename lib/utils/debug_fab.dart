import 'package:flutter/material.dart';
import 'breakpoints.dart';

class DebugFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: null,
      heroTag: null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      elevation: 0,
      backgroundColor: Colors.orange,
      mini: true,
      child: Center(
        child: Text(
          Breakpoints.name(context).toUpperCase(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
