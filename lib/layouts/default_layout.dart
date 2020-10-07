import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;
  const DefaultLayout({@required this.child});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeOutQuad,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            Container(
              height: 100,
              child: Center(child: Text('Default Layout')),
            ),
            Expanded(child: this.child),
          ],
        ),
      ),
    );
  }
}
