import 'package:flutter/material.dart';
import 'package:rick_and_morty/home_screen.dart';
import 'package:rick_and_morty/resources/main_images.dart';
import 'package:rick_and_morty/screens/my_screen/start_screen.dart';
import 'package:rick_and_morty/theme/color_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomeScreen(),
    );
  }
}
