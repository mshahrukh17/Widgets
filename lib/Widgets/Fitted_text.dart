// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Fittedtext extends StatelessWidget {
  const Fittedtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 200,
          color: Colors.white,
          child: const FittedBox(
            child: Text("Hello bro how are you",
            style: TextStyle(
              color: Colors.black
            ),
            ),
          ),
        ),
      ],
    );
  }
}