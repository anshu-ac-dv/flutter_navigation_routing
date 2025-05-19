import 'package:flutter/material.dart';
import 'package:flutter_navigation_routing/utilities/routes.dart';
import 'package:flutter_navigation_routing/utilities/routes_name.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: RoutesName.HomeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
