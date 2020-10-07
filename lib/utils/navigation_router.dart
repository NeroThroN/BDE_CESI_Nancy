import 'package:bde_cesi_nancy/layouts/layouts.dart';
import 'package:bde_cesi_nancy/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationRouter {
  static String initialRoute = '/';

  static List<GetPage> getPages = [
    GetPage(name: HomeScreen.routeName, page: () => HomeScreen()),
    GetPage(name: MessagesScreen.routeName, page: () => MessagesScreen()),
    GetPage(name: CalendarScreen.routeName, page: () => CalendarScreen()),
    GetPage(name: ShopScreen.routeName, page: () => ShopScreen()),
    GetPage(name: AccountScreen.routeName, page: () => AccountScreen()),
    GetPage(name: SettingsScreen.routeName, page: () => SettingsScreen()),
    GetPage(name: LoginScreen.routeName, page: () => LoginScreen()),
  ];

  static Transition defaultTransition = Transition.native;

  static Widget getLayout(BuildContext context, Widget child) {
    switch (Get.currentRoute) {
      case HomeScreen.routeName:
      case MessagesScreen.routeName:
      case CalendarScreen.routeName:
      case ShopScreen.routeName:
      case AccountScreen.routeName:
      case SettingsScreen.routeName:
        return DefaultLayout(child: child);
      default:
        return BlankLayout(child: child);
    }
  }

  static void authRedirect({@required Routing routing, bool connected = false}) {
    if (connected && routing.current == LoginScreen.routeName) {
      Get.offAllNamed(HomeScreen.routeName);
    } else if (!connected && routing.current != LoginScreen.routeName) {
      Get.offAllNamed(LoginScreen.routeName);
    }
  }
}
