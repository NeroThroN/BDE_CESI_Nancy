import 'package:flutter/material.dart';

abstract class Breakpoints {
  static const double xsThreshold = 600.0;
  static const double smThreshold = 960.0;
  static const double mdThreshold = 1264.0;
  static const double lgThreshold = 1904.0;

  static bool xs(BuildContext context) => MediaQuery.of(context).size.width <= xsThreshold;
  static bool sm(BuildContext context) => MediaQuery.of(context).size.width > xsThreshold && MediaQuery.of(context).size.width <= smThreshold;
  static bool md(BuildContext context) => MediaQuery.of(context).size.width > smThreshold && MediaQuery.of(context).size.width <= mdThreshold;
  static bool lg(BuildContext context) => MediaQuery.of(context).size.width > mdThreshold && MediaQuery.of(context).size.width <= lgThreshold;
  static bool xl(BuildContext context) => MediaQuery.of(context).size.width >= lgThreshold;

  static bool xsOnly(BuildContext context) => xs(context);
  static bool smOnly(BuildContext context) => sm(context);
  static bool mdOnly(BuildContext context) => md(context);
  static bool lgOnly(BuildContext context) => lg(context);
  static bool xlOnly(BuildContext context) => xl(context);

  static bool smAndDown(BuildContext context) => xs(context) || sm(context);
  static bool smAndUp(BuildContext context) => sm(context) || md(context) || lg(context) || xl(context);
  static bool mdAndDown(BuildContext context) => xs(context) || sm(context) || md(context);
  static bool mdAndUp(BuildContext context) => md(context) || lg(context) || xl(context);
  static bool lgAndDown(BuildContext context) => xs(context) || sm(context) || md(context) || lg(context);
  static bool lgAndUp(BuildContext context) => lg(context) || xl(context);

  static String name(BuildContext context) {
    if (xs(context)) {
      return 'xs';
    } else if (sm(context)) {
      return 'sm';
    } else if (md(context)) {
      return 'md';
    } else if (lg(context)) {
      return 'lg';
    } else if (xl(context)) {
      return 'xl';
    } else {
      return 'none';
    }
  }
}
