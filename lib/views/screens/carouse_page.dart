import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carouse_page extends StatefulWidget {
  const carouse_page({Key? key}) : super(key: key);

  @override
  State<carouse_page> createState() => _carouse_pageState();
}

int initvalue = 0;
bool isvertical = false;
List image = [
  "https://images.unsplash.com/photo-1664918146611-24194fe9b947?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1664919418894-b787c5305bf6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1662581872277-0fd0bf3ae8f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1664574653006-4d7eb5f1a418?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1664902276790-90624a60ff47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"
];
final CarouselController carouselController = CarouselController();

class _carouse_pageState extends State<carouse_page> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("carouse_page"),
        actions: [
          Switch(
              value: isvertical,
              onChanged: (val) {
                setState(() {
                  isvertical = val;
                });
              })
        ],
      ),
      body: Column(
        children: [
          CarouselSlider(
              carouselController: carouselController,
              items: image
                  .map((e) => Image.network(
                "$e",
                fit: BoxFit.contain,
              ))
                  .toList(),
              options: CarouselOptions(
                  height: _height * 0.4,
                  autoPlay: true,
                  aspectRatio: 0.8,
                  scrollDirection:
                  (isvertical == true) ? Axis.vertical : Axis.horizontal,
                  enlargeCenterPage: true,
                  initialPage: initvalue,
                  onPageChanged: (val, _) {
                    setState(() {
                      initvalue = val;
                    });
                  },
                  autoPlayCurve: Curves.bounceInOut)),
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 100),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: image.map((e) {
                int i = image.indexOf(e);
                return GestureDetector(
                  onTap: () {
                    carouselController.animateToPage(i);
                    setState(() {
                      initvalue = i;
                    });
                  },
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor:
                    (i == initvalue) ? Colors.white : Colors.grey,
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
