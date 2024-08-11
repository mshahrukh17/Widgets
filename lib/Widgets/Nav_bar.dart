// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
   int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          Center(child: Text("home")),
          Center(child: Text("Favourite")),
          Center(child: Text("person")),
          Center(child: Text("Settigns"))
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: GNav(
              rippleColor:
                  Colors.grey.shade800, // tab button ripple color when pressed
              hoverColor: Colors.grey.shade700,
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              //  duration: Duration(milliseconds: 400),
              gap: 8.0,
              padding: EdgeInsets.all(16.0),
               selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
                _pageController.animateToPage(
                  index,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              });
            },
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(icon: Icons.favorite, text: "Favourite"),
                GButton(icon: Icons.person, text: "person"),
                GButton(icon: Icons.settings, text: "settings")
              ]),
        ),
      ),
    );
  }
}
