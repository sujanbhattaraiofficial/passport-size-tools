import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:passport_maker/module/home/screens/home_screen.dart';

class RouteServices {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case "/":
        return CupertinoPageRoute(builder: (_) {
          return const HomeScreen();
        });
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Page Not Found"),
        ),
      );
    });
  }
}
