import 'package:bde_cesi_nancy/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';

void main() {
  runApp(Provider.value(
    value: Flavor.prod,
    child: MyApp(),
  ));
}
