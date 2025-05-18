import 'package:flutter/material.dart';
import 'package:flutter_navigation_routing/home_screen.dart';
import 'package:flutter_navigation_routing/screen_three.dart';
import 'package:flutter_navigation_routing/screen_two.dart';

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
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        SecondScreen.id: (context) => SecondScreen(),
        ThiredScreen.id: (context) => ThiredScreen(),
      },
    );
  }
}
