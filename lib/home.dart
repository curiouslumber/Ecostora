import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Example: Adjust font size based on screen width
    double fontSize = screenWidth > 600 ? 24 : 16;

    return Container(
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(color: Color(0xffFFFDDB)),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(color: Color(0xff128C7E), width: 1.0),
              ),
            ),
            height: screenHeight / 16,
            width: screenWidth,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            height: screenHeight / 9,
            width: screenWidth,
            child: SearchBar(
                elevation: const MaterialStatePropertyAll(0.0),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color(0xff128C7E),
                      ),
                      borderRadius: BorderRadius.circular(16.0)),
                )),
          ),
          SizedBox(
            // color: Colors.black,
            height: screenHeight / 8.3,
            width: screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: screenHeight,
                  width: screenWidth / 6,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'images/mobile1.jpg',
                        ),
                      ),
                      Text(
                        'Electronics',
                        style: TextStyle(
                          fontSize: fontSize / 1.5,
                          fontFamily: 'Quicksand-Bold',
                          color: const Color(0xff128C7E),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: screenHeight,
                  width: screenWidth / 6,
                  decoration: const BoxDecoration(
                      color: Color(0xff128C7E), shape: BoxShape.circle),
                ),
                Container(
                  height: screenHeight,
                  width: screenWidth / 6,
                  decoration: const BoxDecoration(
                      color: Color(0xff128C7E), shape: BoxShape.circle),
                ),
                Container(
                  height: screenHeight,
                  width: screenWidth / 6,
                  decoration: const BoxDecoration(
                      color: Color(0xff128C7E), shape: BoxShape.circle),
                ),
              ],
            ),
          ),
          Container(
            // color: Colors.white,
            margin: EdgeInsets.only(top: 8.0),
            alignment: Alignment.topCenter,
            width: screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight / 3.8,
                  width: screenWidth,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.8,
                      aspectRatio: 16 / 9,
                      autoPlay: false,
                      autoPlayInterval: const Duration(seconds: 4),
                      enlargeCenterPage: true,
                    ),
                    items: [
                      Container(
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child:
                              Image.asset('images/men1.jpg', fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset('images/women1.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        // padding: const EdgeInsets.symmetric(vertical: 10.0),
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset('images/tech1.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ), // Adjust the spacing between carousel and dots
                Container(
                  // color: Colors.green,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff139D8D), // Active dot color
                        ),
                      ),
                      Container(
                        width: 6,
                        height: 6,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff139D8D)),
                          shape: BoxShape.circle,
                          color: const Color(0xffFFFFFF), // Inactive dot color
                        ),
                      ),
                      Container(
                        width: 6,
                        height: 6,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff139D8D)),
                          shape: BoxShape.circle,
                          color: const Color(0xffFFFFFF), // Inactive dot color
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
