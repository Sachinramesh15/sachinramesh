import 'package:flutter/material.dart';
import 'package:my_app/landing/landing.dart';
import 'package:my_app/profile/profile.dart';
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {

        landing.routeName: (context) => landing(),
      },
    );
  }
}
