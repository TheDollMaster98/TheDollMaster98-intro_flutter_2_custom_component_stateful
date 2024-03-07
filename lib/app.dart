import 'package:flutter/material.dart';
import 'package:intro_flutter_2_custom_component_stateful/pages/home_page.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(25),
    );
  }
}