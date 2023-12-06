import 'package:flutter/material.dart';
import 'package:food_ui_app/pages/bottom/bottomnav.dart';
import 'package:food_ui_app/pages/screens/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Bottomnav(),
      debugShowCheckedModeBanner: true,
    );
  }
}
