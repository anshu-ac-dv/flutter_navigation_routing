import 'package:flutter/material.dart';
import 'package:flutter_navigation_routing/home_screen.dart';
import 'package:flutter_navigation_routing/screen_three.dart';
import 'package:flutter_navigation_routing/screen_two.dart';
import 'package:flutter_navigation_routing/utilities/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.HomeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RoutesName.SecondScreen:
        return MaterialPageRoute(builder: (context) => SecondScreen());
      case RoutesName.ThiredScreen:
        return MaterialPageRoute(builder: (context) => ThiredScreen());
      default:
        return MaterialPageRoute(builder: (context) {return Scaffold(body: Text('No Route'));});
    }
  }
}
