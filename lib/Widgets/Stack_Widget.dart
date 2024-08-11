// ignore_for_file: file_names

import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
  children: [
    Center(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    ),
    Positioned(
      top: 290,
      left: 150,
      child: Container(
        width: 50,
        height: 50,
        color: Colors.blue,
      ),
    ),
  ],
);

  }
}