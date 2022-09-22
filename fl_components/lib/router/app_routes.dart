import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const String home = '/home';
  static const String listview1 = '/listview1';
  static const String listview2 = '/listview2';
  static const String alert = '/alert';
  static const String card = '/card';

  static final menuOptions = <MenuOption>[
    // TODO: Borrar Home
    MenuOption(
      route: '/home',
      name: 'Home Screen',
      screen: const HomeScreen(),
      icon: Icons.home,
    ),
    MenuOption(
      route: '/listview1',
      name: 'listview1 Screen',
      screen: const ListView1Screen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: '/listview2',
      name: 'listview2 Screen',
      screen: const ListView2Screen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: '/alert',
      name: 'alert Screen',
      screen: const AlertScreen(),
      icon: Icons.add_alert_sharp,
    ),
    MenuOption(
      route: '/card',
      name: 'card Screen',
      screen: const CardScreen(),
      icon: Icons.card_giftcard,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final menuOption in menuOptions) {
      appRoutes[menuOption.route] = (context) => menuOption.screen;
    }
    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   home: (context) => HomeScreen(),
  //   listview1: (context) => ListView1Screen(),
  //   listview2: (context) => ListView2Screen(),
  //   alert: (context) => AlertScreen(),
  //   card: (context) => CardScreen(),
  // };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => HomeScreen());
  }
}
