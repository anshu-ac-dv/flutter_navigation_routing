import 'package:flutter/material.dart';
import 'package:flutter_navigation_routing/screen_two.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    SecondScreen.id,
                    arguments: {'name': 'Anshu'},
                  );
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SecondScreen(name : "Anshu")),
                  // );
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Center(child: Text('Screen 1')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
