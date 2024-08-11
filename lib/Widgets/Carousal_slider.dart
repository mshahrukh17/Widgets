// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:widgets/Widgets/Nav_bar.dart';
import 'package:widgets/Widgets/Stack_Widget.dart';

class CarousalSliderWidget extends StatefulWidget {
  const CarousalSliderWidget({super.key});

  @override
  State<CarousalSliderWidget> createState() => _CarousalSliderWidgetState();
}

class _CarousalSliderWidgetState extends State<CarousalSliderWidget> {
  var items = [
    "https://img.freepik.com/premium-psd/gameday-soccer-football-schedule-club-square-social-media-banner-flyer_540495-595.jpg?w=740",
    "https://img.freepik.com/premium-photo/close-up-soccer-striker-ready-kicks-fiery-ball-stadium_207634-7.jpg?w=740"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Carousal Slider",
        ),
      ),
      body: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: items
                  .map((item) => GestureDetector(
                        onTap: () {
                          if (item.contains("gameday")) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Navbar()));
                          } else if (item.contains("close-up")) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StackWidget()));
                          }
                        },
                        child: Container(
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                child: Stack(
                                  children: <Widget>[
                                    Image.network(item,
                                        fit: BoxFit.cover, width: 1000.0),
                                    Positioned(
                                      bottom: 0.0,
                                      left: 0.0,
                                      right: 0.0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(200, 0, 0, 0),
                                              Color.fromARGB(0, 0, 0, 0)
                                            ],
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 20.0),
                                        child: Text(
                                          'No. ${items.indexOf(item)} image',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ))
                  .toList(),
            ),
            Center(
                child: Text(
              "Home",
              style: TextStyle(fontSize: 30),
            )),
          ],
        ),
      );
    
  }
}
