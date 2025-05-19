# Flutter_navigation_routing

## Understanding About Routing and Nevigation

### Initilized Routes Names 

```
class RoutesName {
  static const String HomeScreen = 'home_screen';
  static const String SecondScreen = 'screen_two';
  static const String ThiredScreen = 'screen_three';
}
```

### Initilized Routes using Switch Case
```
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

```

### Main.dart file 
```
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
```
### Home Screen
```
import 'package:flutter/material.dart';
import 'package:flutter_navigation_routing/utilities/routes_name.dart';

class HomeScreen extends StatelessWidget {
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
                  Navigator.pushNamed(context, RoutesName.SecondScreen);
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

```

### Second Screen
```
import 'package:flutter/material.dart';
import 'package:flutter_navigation_routing/screen_three.dart';

class SecondScreen extends StatefulWidget {

  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThiredScreen()),
                  );
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Center(child: Text('Screen 2')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```

### Screen Three
```
import 'package:flutter/material.dart';

class ThiredScreen extends StatefulWidget {
  const ThiredScreen({super.key});

  @override
  State<ThiredScreen> createState() => _ThiredScreenState();
}

class _ThiredScreenState extends State<ThiredScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Thired Screen')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Center(child: Text('Screen 3')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```