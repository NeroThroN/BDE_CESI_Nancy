import 'dart:ui';
import 'package:bde_cesi_nancy/controllers/controllers.dart';
import 'package:bde_cesi_nancy/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Window window = WidgetsBinding.instance.window;
    final bool isDev = Provider.of<Flavor>(context) == Flavor.dev;

    return GetBuilder<ThemeController>(
      init: ThemeController(systemBrightness: window.platformBrightness),
      builder: (ThemeController controller) {
        window.onPlatformBrightnessChanged = () => controller.updateSystemBrightness(window.platformBrightness);

        return GetMaterialApp(
          title: 'Flutter Demo',
          theme: controller.getTheme(),
          debugShowCheckedModeBanner: isDev,
          enableLog: isDev,
          home: Home(),
        );
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BDE CESI Nancy"),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              child: Text('Toggle brightness'),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Get.find<ThemeController>().toggleBrightness();
              },
            ),
            MaterialButton(
              child: Text('System Brightness'),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Get.find<ThemeController>().setBrightness(ThemeBrightness.System);
              },
            ),
            MaterialButton(
              child: Text('Toggle school'),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Get.find<ThemeController>().toggleSchool();
              },
            )
          ],
        ),
      ),
    );
  }
}
