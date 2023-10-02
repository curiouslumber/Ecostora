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

    return Container(
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(color: Color(0xffFFFDDB)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MaterialButton(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: const EdgeInsets.all(0),
              onPressed: () {
                print("Button pressed");
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color: Color(0xff128C7E), width: 1.0),
                  ),
                ),
                height: screenHeight / 20.8,
                width: screenWidth,
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Color(0xff128C7E),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 4.0),
                        child: const FittedBox(
                            child: Text(
                          'Click here to select a location',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontFamily: 'Quicksand-SemiBold',
                              color: Color(0xff128C7E)),
                        )))
                  ],
                ),
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              height: screenHeight / 11,
              width: screenWidth,
              child: SearchBar(
                  trailing: [
                    Container(
                      margin: const EdgeInsets.only(right: 8.0),
                      child: const Icon(
                        Icons.search,
                        color: Color(0xff128C7E),
                      ),
                    )
                  ],
                  hintStyle: const MaterialStatePropertyAll(TextStyle(
                    fontFamily: 'Quicksand-SemiBold',
                    color: Color(0xff128C7E),
                  )),
                  hintText: 'Search Ecostora.com',
                  elevation: const MaterialStatePropertyAll(0.0),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color(0xff128C7E),
                        ),
                        borderRadius: BorderRadius.circular(16.0)),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 4.0),
              // color: Colors.black,
              height: screenHeight / 7.2,
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
                        Container(
                          margin: const EdgeInsets.only(top: 4.0),
                          child: const FittedBox(
                            child: Text(
                              'Smart\nphones',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Quicksand-Bold',
                                color: Color(0xff128C7E),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenHeight,
                    width: screenWidth / 6,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'images/headset1.jpg',
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4.0),
                          child: const FittedBox(
                            child: Text(
                              'Wired\nHeadset',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Quicksand-Bold',
                                color: Color(0xff128C7E),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenHeight,
                    width: screenWidth / 6,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'images/mensclothing1.jpg',
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4.0),
                          child: const FittedBox(
                            child: Text(
                              'Men\'s\nFashion',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Quicksand-Bold',
                                color: Color(0xff128C7E),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenHeight,
                    width: screenWidth / 6,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'images/womensclothing1.jpg',
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4.0),
                          child: const FittedBox(
                            child: Text(
                              'Women\'s\nFashion',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Quicksand-Bold',
                                color: Color(0xff128C7E),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 4.0),
              alignment: Alignment.topCenter,
              width: screenWidth,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: screenHeight / 3.75,
                    width: screenWidth,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        viewportFraction: 1,
                        aspectRatio: 16 / 9,
                        autoPlay: false,
                        autoPlayInterval: const Duration(seconds: 4),
                      ),
                      items: [
                        Container(
                          alignment: Alignment.center,
                          child: ClipRRect(
                            child: Image.asset('images/men1.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: ClipRRect(
                            // borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset('images/women1.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          // padding: const EdgeInsets.symmetric(vertical: 10.0),
                          alignment: Alignment.center,
                          child: ClipRRect(
                            // borderRadius: BorderRadius.circular(8.0),
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
                    margin: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff139D8D), // Active dot color
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff139D8D)),
                            shape: BoxShape.circle,
                            color:
                                const Color(0xffFFFFFF), // Inactive dot color
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff139D8D)),
                            shape: BoxShape.circle,
                            color:
                                const Color(0xffFFFFFF), // Inactive dot color
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: screenHeight / 2.8,
              width: screenWidth,
              // color: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                padding: const EdgeInsets.only(top: 4.0),
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.circular(8.0),
                  color: Color(0xff139D8D),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: screenHeight / 25,
                        alignment: Alignment.center,
                        // color: Colors.yellow,
                        padding:
                            EdgeInsets.symmetric(horizontal: screenWidth / 70),
                        margin: const EdgeInsets.only(bottom: 4.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 16.0),
                              alignment: Alignment.center,
                              child: const Text(
                                'Deals For You',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Quicksand-Bold'),
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              alignment: Alignment.topCenter,
                              padding: const EdgeInsets.all(0),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.navigate_next,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: screenHeight / 8,
                                width: screenWidth / 4,
                                decoration: BoxDecoration(
                                  // color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        // color: Colors.green,
                                      ),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'images/luxurybag1.jpg',
                                          )),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 16.0),
                                      height: screenHeight / 35,
                                      width: screenWidth / 6,
                                      padding: const EdgeInsets.only(
                                          left: 2.0, right: 4.0),
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(8.0),
                                            bottomRight: Radius.circular(8.0)),
                                        color: const Color(0xffFFFFFF)
                                            .withOpacity(0.9),
                                      ),
                                      child: const Text(
                                        '15% OFF',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff139D8D),
                                            fontFamily: 'Quicksand-Bold'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: screenHeight / 8,
                                width: screenWidth / 4,
                                decoration: BoxDecoration(
                                  // color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        // color: Colors.green,
                                      ),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'images/jacket1.jpg',
                                          )),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 16.0),
                                      height: screenHeight / 35,
                                      width: screenWidth / 6,
                                      padding: const EdgeInsets.only(
                                          left: 2.0, right: 4.0),
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(8.0),
                                            bottomRight: Radius.circular(8.0)),
                                        color: const Color(0xffFFFFFF)
                                            .withOpacity(0.9),
                                      ),
                                      child: const Text(
                                        '5% OFF',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff139D8D),
                                            fontFamily: 'Quicksand-Bold'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: screenHeight / 8,
                                width: screenWidth / 4,
                                decoration: BoxDecoration(
                                  // color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        // color: Colors.green,
                                      ),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'images/laptopsale1.jpg',
                                          )),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 16.0),
                                      height: screenHeight / 35,
                                      width: screenWidth / 6,
                                      padding: const EdgeInsets.only(
                                          left: 2.0, right: 4.0),
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(8.0),
                                            bottomRight: Radius.circular(8.0)),
                                        color: const Color(0xffFFFFFF)
                                            .withOpacity(0.9),
                                      ),
                                      child: const Text(
                                        '3% OFF',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff139D8D),
                                            fontFamily: 'Quicksand-Bold'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: screenHeight / 8,
                                  width: screenWidth / 4,
                                  decoration: BoxDecoration(
                                    // color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          // color: Colors.green,
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'images/luxurybag1.jpg',
                                            )),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        margin:
                                            const EdgeInsets.only(top: 16.0),
                                        height: screenHeight / 35,
                                        width: screenWidth / 6,
                                        padding: const EdgeInsets.only(
                                            left: 2.0, right: 4.0),
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                              topRight: Radius.circular(8.0),
                                              bottomRight:
                                                  Radius.circular(8.0)),
                                          color: const Color(0xffFFFFFF)
                                              .withOpacity(0.9),
                                        ),
                                        child: const Text(
                                          '12% OFF',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff139D8D),
                                              fontFamily: 'Quicksand-Bold'),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: screenHeight / 8,
                                  width: screenWidth / 4,
                                  decoration: BoxDecoration(
                                    // color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          // color: Colors.green,
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'images/jacket1.jpg',
                                            )),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        margin:
                                            const EdgeInsets.only(top: 16.0),
                                        height: screenHeight / 35,
                                        width: screenWidth / 6,
                                        padding: const EdgeInsets.only(
                                            left: 2.0, right: 4.0),
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                              topRight: Radius.circular(8.0),
                                              bottomRight:
                                                  Radius.circular(8.0)),
                                          color: const Color(0xffFFFFFF)
                                              .withOpacity(0.9),
                                        ),
                                        child: const Text(
                                          '9% OFF',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff139D8D),
                                              fontFamily: 'Quicksand-Bold'),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: screenHeight / 8,
                                  width: screenWidth / 4,
                                  decoration: BoxDecoration(
                                    // color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          // color: Colors.green,
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'images/laptopsale1.jpg',
                                            )),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        margin:
                                            const EdgeInsets.only(top: 16.0),
                                        height: screenHeight / 35,
                                        width: screenWidth / 6,
                                        padding: const EdgeInsets.only(
                                            left: 2.0, right: 4.0),
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                              topRight: Radius.circular(8.0),
                                              bottomRight:
                                                  Radius.circular(8.0)),
                                          color: const Color(0xffFFFFFF)
                                              .withOpacity(0.9),
                                        ),
                                        child: const Text(
                                          '13% OFF',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff139D8D),
                                              fontFamily: 'Quicksand-Bold'),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
