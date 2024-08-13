// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgets/Widgets/GridViewExample.dart';
import 'package:widgets/Widgets/Tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue,
        background: Colors.white
        ),
        useMaterial3: true,
      ),
      home: GridViewExample()
    );
  }
}