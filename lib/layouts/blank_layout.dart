import 'package:flutter/material.dart';

class BlankLayout extends StatelessWidget {
  final Widget child;
  const BlankLayout({@required this.child});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeOutQuad,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: this.child,
      ),
    );
  }
}
