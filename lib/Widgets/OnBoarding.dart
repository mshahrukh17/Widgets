// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController =
      PageController(); // Page control karne ke liye
  int _currentPage = 0; // Abhi kis page pe ho ye store karne ke liye

  // Pages banane ka easy tareeqa
  List<Widget> _buildPageContent() {
    return [
      _buildPage(
        image: 'assets/image1.png', // Pehli screen ka image
        title: 'Welcome to the App', // Pehli screen ka title
        description:
            'This is a brief description of the app.', // Pehli screen ka text
      ),
      _buildPage(
        image: 'assets/image2.png',
        title: 'Track Your Progress',
        description: 'Keep track of your progress in the app.',
      ),
      _buildPage(
        image: 'assets/image3.png',
        title: 'Get Started',
        description: 'Let\'s get started!',
      ),
    ];
  }

  // Har page ke design ke liye method
  Widget _buildPage(
      {required String image,
      required String title,
      required String description}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 300), // Image ko display karne ke liye
        SizedBox(height: 30),
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            description,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  // Page change hotay waqt state update karne ke liye
  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: _buildPageContent(),
          ),
          _buildIndicator(),
          _buildNextButton(),
        ],
      ),
    );
  }

  // Dots indicators banane ka tareeqa
  Widget _buildIndicator() {
    return Positioned(
      bottom: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          _buildPageContent().length, // Har page ke liye ek dot
          (index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: _currentPage == index ? 12 : 8, // Active page ka dot bara
            height: _currentPage == index ? 15 : 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentPage == index ? Colors.blue : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  // Next button ko handle karne ka tareeqa
  Widget _buildNextButton() {
    return Positioned(
        bottom: 30,
        right: 20,
        child: ElevatedButton(
            onPressed: () {
              if (_currentPage == _buildPageContent().length - 1) {
              } else {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              }
            },
            child: Text(_currentPage == _buildPageContent().length - 1 ? "Get Started" : "Next")));
  }
}
