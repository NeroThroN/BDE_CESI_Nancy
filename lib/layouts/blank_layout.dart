import 'package:flutter/material.dart';

class BlankLayout extends StatelessWidget {
  final Widget child;
  const BlankLayout({@required this.child});
  @override
  Widget build(BuildContext context) => this.child;
}
