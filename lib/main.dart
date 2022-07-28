// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sample_project/screens/preferences/preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const PreferenceScreen(),
    );
  }
}
