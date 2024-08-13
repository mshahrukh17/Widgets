// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool isTapped = false; // Initial state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer Example'),
      ),
      body: Center(
          child: RotationAnimation()
),
    );
  }

  AnimatedContainer RotationAnimation() {
    return AnimatedContainer(
duration: Duration(seconds: 1),
width: 200,
height: 200,
decoration: BoxDecoration(
  color: isTapped ? Colors.red : Colors.blue,
  borderRadius: BorderRadius.circular(20),
),
transform: Matrix4.rotationZ(isTapped ? 0.5 : 0),
child: InkWell(
  onTap: () {
    setState(() {
      isTapped = !isTapped;
    });
  },
  child: Center(
    child: Text(
      'Tap me',
      style: TextStyle(color: Colors.white, fontSize: 18),
    ),
  ),
),
);
  }

  AnimatedContainer ShadowAnimation() {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: isTapped ? Colors.red : Colors.blue,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: isTapped ? 10 : 2,
            blurRadius: isTapped ? 15 : 5,
            offset: isTapped ? Offset(5, 5) : Offset(2, 2),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            isTapped = !isTapped;
          });
        },
        child: Center(
          child: Text(
            'Tap me',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }

  AnimatedContainer BorderRadiusAnimation() {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: isTapped ? Colors.red : Colors.blue,
        borderRadius:
            isTapped ? BorderRadius.circular(50) : BorderRadius.circular(0),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            isTapped = !isTapped;
          });
        },
        child: Center(
          child: Text(
            'Tap me',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }

  AnimatedContainer Gradiantanimation() {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: isTapped
              ? [Colors.purple, Colors.blue]
              : [Colors.orange, Colors.yellow],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            isTapped = !isTapped;
          });
        },
        child: Center(
          child: Text(
            'Tap me',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
