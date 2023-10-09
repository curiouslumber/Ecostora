import 'package:ecostore/ViewModel/controller.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
  Home({
    super.key,
  });

  final c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    c.checkUserConnection();

    return Obx(
      () => c.isLoading.value
          ? Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: Color(0xffFFFDDB)),
              child: const CircularProgressIndicator(
                color: Color(0xff128C7E),
                backgroundColor: Color(0xffFFFDDB),
              ),
            )
          : Container(
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(color: Color(0xffA6D49F)),
              child: !c.activeConnection.value
                  ? Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 2.h),
                            child: Text(
                              'No Internet Connection',
                              style: TextStyle(
                                  fontFamily: 'Quicksand-SemiBold',
                                  color: const Color(0xff128C7E),
                                  fontSize: 16.sp),
                            ),
                          ),
                          MaterialButton(
                            padding: EdgeInsets.zero,
                            onPressed: () async {
                              c.isLoading.value = true;
                              await c.checkUserConnection();
                              c.isLoading.value = false;
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0)),
                            color: const Color(0xff128C7E),
                            child: SizedBox(
                              width: 30.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.refresh,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 2.w),
                                    child: const Text(
                                      'Refresh',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  : SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            padding: const EdgeInsets.all(0),
                            height: screenHeight / 20,
                            onPressed: () {},
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  bottom: BorderSide(
                                      color: Color(0xff128C7E), width: 1.0),
                                ),
                              ),
                              height: screenHeight / 20,
                              width: screenWidth,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Color(0xff157F1F),
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
                                            color: Color(0xff157F1F)),
                                      )))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16.0),
                            height: screenHeight / 10,
                            width: screenWidth,
                            child: SearchBar(
                                trailing: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 8.0),
                                    child: const Icon(
                                      Icons.search,
                                      color: Color(0xff157F1F),
                                    ),
                                  )
                                ],
                                hintStyle:
                                    const MaterialStatePropertyAll(TextStyle(
                                  fontFamily: 'Quicksand-Medium',
                                  color: Color(0xff157F1F),
                                )),
                                hintText: 'Search Ecostora.com',
                                elevation: const MaterialStatePropertyAll(0.0),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      side: const BorderSide(
                                        color: Color(0xff157F1F),
                                      ),
                                      borderRadius: BorderRadius.circular(8.0)),
                                )),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 4.0),
                            // color: Colors.black,
                            height: screenHeight / 6.5,
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
                                          'images/Home/organicfruits1.jpg',
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 4.0),
                                        child: Text(
                                          'Organic\nFruits',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 8.6.sp,
                                            fontFamily: 'Quicksand-SemiBold',
                                            color: const Color(0xff157F1F),
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
                                          'images/Home/plantbasedprotein1.jpg',
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 4.0),
                                        child: Text(
                                          'Plant-based\nProteins',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 8.6.sp,
                                            fontFamily: 'Quicksand-SemiBold',
                                            color: const Color(0xff157F1F),
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
                                          'images/Home/pantry1.jpg',
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 4.0),
                                        child: Text(
                                          'Zero-waste\nPantry',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 8.6.sp,
                                            fontFamily: 'Quicksand-SemiBold',
                                            color: const Color(0xff157F1F),
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
                                          'images/Home/ecofriendlysnacks1.jpg',
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 4.0),
                                        child: Text(
                                          'Eco-friendly\nSnacks',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 8.6.sp,
                                            fontFamily: 'Quicksand-SemiBold',
                                            color: const Color(0xff157F1F),
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
                                  height: screenHeight / 3.2,
                                  width: screenWidth,
                                  child: CarouselSlider(
                                    options: CarouselOptions(
                                      viewportFraction: 1,
                                      aspectRatio: 16 / 9,
                                      autoPlay: false,
                                      autoPlayInterval:
                                          const Duration(seconds: 4),
                                    ),
                                    items: [
                                      Container(
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                            'images/Home/carousel1.jpg',
                                            width: screenWidth,
                                            fit: BoxFit.fill),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: ClipRRect(
                                          // borderRadius: BorderRadius.circular(8.0),
                                          child: Image.asset(
                                              'images/Home/carousel2.jpg',
                                              width: screenWidth,
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                      Container(
                                        // padding: const EdgeInsets.symmetric(vertical: 10.0),
                                        alignment: Alignment.center,
                                        child: ClipRRect(
                                          // borderRadius: BorderRadius.circular(8.0),
                                          child: Image.asset(
                                              'images/Home/carousel3.jpg',
                                              width: screenWidth,
                                              fit: BoxFit.fill),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 8,
                                        height: 8,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(
                                              0xff157F1F), // Active dot color
                                        ),
                                      ),
                                      Container(
                                        width: 8,
                                        height: 8,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff157F1F)),
                                          shape: BoxShape.circle,
                                          color: const Color(
                                              0xffFFFFFF), // Inactive dot color
                                        ),
                                      ),
                                      Container(
                                        width: 8,
                                        height: 8,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff157F1F)),
                                          shape: BoxShape.circle,
                                          color: const Color(
                                              0xffFFFFFF), // Inactive dot color
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: screenHeight / 2.75,
                            width: screenWidth,
                            // color: Colors.green,
                            padding: EdgeInsets.symmetric(vertical: 1.3.h),
                            child: Container(
                              padding: const EdgeInsets.only(top: 4.0),
                              decoration: const BoxDecoration(
                                // borderRadius: BorderRadius.circular(8.0),
                                color: Color(0xff8F513E),
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: screenHeight / 25,
                                      alignment: Alignment.center,
                                      // color: Colors.yellow,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: screenWidth / 70),
                                      margin:
                                          const EdgeInsets.only(bottom: 4.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 5.w),
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Deals For You',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12.sp,
                                                  fontFamily:
                                                      'Quicksand-Medium'),
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            margin: EdgeInsets.only(right: 1.w),
                                            child: IconButton(
                                              alignment: Alignment.topCenter,
                                              padding: const EdgeInsets.all(0),
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.navigate_next,
                                                size: 4.h,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: screenHeight / 8,
                                              width: screenWidth / 4,
                                              decoration: BoxDecoration(
                                                // color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      // color: Colors.green,
                                                    ),
                                                    child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.asset(
                                                          'images/Home/ecofriendlysnacks2.jpg',
                                                          fit: BoxFit.fitWidth,
                                                          width: screenWidth,
                                                        )),
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            top: 16.0),
                                                    height: screenHeight / 35,
                                                    width: screenWidth / 6,
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 2.0,
                                                            right: 4.0),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          4.0)),
                                                      color: const Color(
                                                              0xffCC2936)
                                                          .withOpacity(0.9),
                                                    ),
                                                    child: const Text(
                                                      '15% OFF',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xffF4D6CC),
                                                          fontFamily:
                                                              'Quicksand-Medium'),
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
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      // color: Colors.green,
                                                    ),
                                                    child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.asset(
                                                          'images/Home/ecofriendlysnacks1.jpg',
                                                          fit: BoxFit.fitWidth,
                                                          width: screenWidth,
                                                        )),
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            top: 16.0),
                                                    height: screenHeight / 35,
                                                    width: screenWidth / 6,
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 2.0,
                                                            right: 4.0),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                              topRight: Radius
                                                                  .circular(
                                                                      8.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          8.0)),
                                                      color: const Color(
                                                              0xffCC2936)
                                                          .withOpacity(0.9),
                                                    ),
                                                    child: const Text(
                                                      '5% OFF',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xffF4D6CC),
                                                          fontFamily:
                                                              'Quicksand-Medium'),
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
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      // color: Colors.green,
                                                    ),
                                                    child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.asset(
                                                          'images/Home/ecofriendlysnacks1.jpg',
                                                          fit: BoxFit.fitWidth,
                                                          width: screenWidth,
                                                        )),
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            top: 16.0),
                                                    height: screenHeight / 35,
                                                    width: screenWidth / 6,
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 2.0,
                                                            right: 4.0),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                              topRight: Radius
                                                                  .circular(
                                                                      8.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          8.0)),
                                                      color: const Color(
                                                              0xffCC2936)
                                                          .withOpacity(0.9),
                                                    ),
                                                    child: const Text(
                                                      '3% OFF',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xffF4D6CC),
                                                          fontFamily:
                                                              'Quicksand-Medium'),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: screenHeight / 8,
                                                width: screenWidth / 4,
                                                decoration: BoxDecoration(
                                                  // color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        // color: Colors.green,
                                                      ),
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            'images/Home/ecofriendlysnacks1.jpg',
                                                            fit:
                                                                BoxFit.fitWidth,
                                                            width: screenWidth,
                                                          )),
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      margin:
                                                          const EdgeInsets.only(
                                                              top: 16.0),
                                                      height: screenHeight / 35,
                                                      width: screenWidth / 6,
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 2.0,
                                                              right: 4.0),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        8.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        8.0)),
                                                        color: const Color(
                                                                0xffFFFFFF)
                                                            .withOpacity(0.9),
                                                      ),
                                                      child: const Text(
                                                        '12% OFF',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Color(
                                                                0xff139D8D),
                                                            fontFamily:
                                                                'Quicksand-Bold'),
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        // color: Colors.green,
                                                      ),
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            'images/Home/ecofriendlysnacks1.jpg',
                                                            fit:
                                                                BoxFit.fitWidth,
                                                            width: screenWidth,
                                                          )),
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      margin:
                                                          const EdgeInsets.only(
                                                              top: 16.0),
                                                      height: screenHeight / 35,
                                                      width: screenWidth / 6,
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 2.0,
                                                              right: 4.0),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        8.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        8.0)),
                                                        color: const Color(
                                                                0xffFFFFFF)
                                                            .withOpacity(0.9),
                                                      ),
                                                      child: const Text(
                                                        '9% OFF',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Color(
                                                                0xff139D8D),
                                                            fontFamily:
                                                                'Quicksand-Bold'),
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        // color: Colors.green,
                                                      ),
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            'images/Home/ecofriendlysnacks1.jpg',
                                                            fit:
                                                                BoxFit.fitWidth,
                                                            width: screenWidth,
                                                          )),
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      margin:
                                                          const EdgeInsets.only(
                                                              top: 16.0),
                                                      height: screenHeight / 35,
                                                      width: screenWidth / 6,
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 2.0,
                                                              right: 4.0),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        8.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        8.0)),
                                                        color: const Color(
                                                                0xffFFFFFF)
                                                            .withOpacity(0.9),
                                                      ),
                                                      child: const Text(
                                                        '13% OFF',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Color(
                                                                0xff139D8D),
                                                            fontFamily:
                                                                'Quicksand-Bold'),
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
            ),
    );
  }
}
