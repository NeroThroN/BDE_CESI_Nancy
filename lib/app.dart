import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'package:bde_cesi_nancy/controllers/controllers.dart';
import 'package:bde_cesi_nancy/utils/utils.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isMounted = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() => this.isMounted = true);
    });
  }

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
          initialRoute: NavigationRouter.initialRoute,
          getPages: NavigationRouter.getPages,
          enableLog: isDev,
          routingCallback: routingCallback,
          builder: NavigationRouter.getLayout,
          defaultTransition: Transition.rightToLeftWithFade,
        );
      },
    );
  }

  void routingCallback(Routing routing) {
    if (this.isMounted) setState(() {});

    WidgetsBinding.instance.addPostFrameCallback((_) => NavigationRouter.authRedirect(routing: routing, connected: false));
  }
}
