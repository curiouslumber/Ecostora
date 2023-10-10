import 'package:auto_size_text/auto_size_text.dart';
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
    AutoSizeGroup group = AutoSizeGroup();

    c.checkUserConnection();

    return Obx(
      () => c.isLoading.value
          ? Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: Color(0xffFFFDDB)),
              child: const CircularProgressIndicator(
                color: Color(0xff028a0f),
                backgroundColor: Color(0xffFFFDDB),
              ),
            )
          : Container(
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(color: Color(0xffFFFDDB)),
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
                                  color: const Color(0xff028a0f),
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
                            color: const Color(0xff028a0f),
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
                                      color: Color(0xff028a0f), width: 1.0),
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
                                    color: Color(0xff028a0f),
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
                                            color: Color(0xff028a0f)),
                                      )))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 1.h, horizontal: 16.0),
                            height: 10.h,
                            width: screenWidth,
                            child: SearchBar(
                                trailing: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 8.0),
                                    child: const Icon(
                                      Icons.search,
                                      color: Color(0xff028a0f),
                                    ),
                                  )
                                ],
                                hintStyle:
                                    const MaterialStatePropertyAll(TextStyle(
                                  fontFamily: 'Quicksand-Medium',
                                  color: Color(0xff028a0f),
                                )),
                                hintText: 'Search Ecostora.com',
                                elevation: const MaterialStatePropertyAll(0.0),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      side: const BorderSide(
                                        color: Color(0xff028a0f),
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 1.h),
                            // color: Colors.black,
                            height: 13.5.h,
                            width: screenWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // color: Colors.amber,
                                  height: 13.h,
                                  width: screenWidth / 6,
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 8.h,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 1.0,
                                                color:
                                                    const Color(0xff028a0f))),
                                        child: ClipOval(
                                          child: Image.asset(
                                            'images/Home/organicfruits1.jpg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 4.h,
                                        margin: EdgeInsets.only(top: 1.h),
                                        child: AutoSizeText(
                                          'Organic\nFruits',
                                          textAlign: TextAlign.center,
                                          group: group,
                                          maxLines: 2,
                                          minFontSize: 8.0,
                                          style: const TextStyle(
                                            fontFamily: 'Quicksand-Bold',
                                            color: Color(0xff028a0f),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 13.h,
                                  width: screenWidth / 6,
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 8.h,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 1.0,
                                                color:
                                                    const Color(0xff028a0f))),
                                        child: ClipOval(
                                          child: Image.asset(
                                            'images/Home/plantbasedprotein1.jpg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 4.h,
                                        margin: EdgeInsets.only(top: 1.h),
                                        child: AutoSizeText(
                                          'Plant-based\nProteins',
                                          textAlign: TextAlign.center,
                                          group: group,
                                          maxLines: 2,
                                          minFontSize: 8.0,
                                          style: const TextStyle(
                                            fontFamily: 'Quicksand-Bold',
                                            color: Color(0xff028a0f),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 13.h,
                                  width: screenWidth / 6,
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 8.h,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 1.0,
                                                color:
                                                    const Color(0xff028a0f))),
                                        child: ClipOval(
                                          child: Image.asset(
                                            'images/Home/pantry1.jpg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 4.h,
                                        alignment: Alignment.topCenter,
                                        margin: EdgeInsets.only(top: 1.h),
                                        child: AutoSizeText(
                                          'Zero-waste\nPantry',
                                          textAlign: TextAlign.center,
                                          group: group,
                                          maxLines: 2,
                                          minFontSize: 8.0,
                                          style: const TextStyle(
                                            fontFamily: 'Quicksand-Bold',
                                            color: Color(0xff028a0f),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 13.h,
                                  width: screenWidth / 6,
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 8.h,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 1.0,
                                                color:
                                                    const Color(0xff028a0f))),
                                        child: ClipOval(
                                          child: Image.asset(
                                            'images/Home/ecofriendlysnacks1.jpg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 4.h,
                                        margin: EdgeInsets.only(top: 1.h),
                                        child: AutoSizeText(
                                          'Eco-friendly\nSnacks',
                                          textAlign: TextAlign.center,
                                          group: group,
                                          maxLines: 2,
                                          minFontSize: 8.0,
                                          style: const TextStyle(
                                            fontFamily: 'Quicksand-Bold',
                                            color: Color(0xff028a0f),
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
                            alignment: Alignment.topCenter,
                            height: 30.h,
                            width: screenWidth,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                SizedBox(
                                  height: 30.h,
                                  width: screenWidth,
                                  child: CarouselSlider(
                                    options: CarouselOptions(
                                      viewportFraction: 1,
                                      height: screenHeight / 3.2,
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
                                            height: screenHeight,
                                            fit: BoxFit.fill),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: ClipRRect(
                                          // borderRadius: BorderRadius.circular(8.0),
                                          child: Image.asset(
                                              'images/Home/carousel2.jpg',
                                              width: screenWidth,
                                              height: screenHeight,
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
                                              height: screenHeight,
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    ],
                                  ),
                                ), // Adjust the spacing between carousel and dots
                                Container(
                                  // color: Colors.green,
                                  alignment: Alignment.bottomCenter,
                                  margin: EdgeInsets.only(bottom: 1.h),
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
                                              0xffA6D49F), // Active dot color
                                        ),
                                      ),
                                      Container(
                                        width: 8,
                                        height: 8,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff028a0f)),
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
                                              color: const Color(0xff028a0f)),
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
                            height: 37.h,
                            width: screenWidth,
                            // color: Colors.green,
                            padding: EdgeInsets.symmetric(vertical: 1.3.h),
                            child: Container(
                              padding: const EdgeInsets.only(top: 4.0),
                              decoration: const BoxDecoration(
                                // borderRadius: BorderRadius.circular(8.0),
                                color: Color(0xff402F1D),
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
                                      margin: EdgeInsets.only(bottom: 1.h),
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
                                                Icons.navigate_next_rounded,
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
                                                      border: Border.all(
                                                          color: Colors.white
                                                              .withOpacity(
                                                                  0.8)),
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
                                                          fit: BoxFit.fill,
                                                          height: screenHeight,
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
                                                              0xffFFFFFF)
                                                          .withOpacity(0.9),
                                                    ),
                                                    child: const Text(
                                                      '15% OFF',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xff028a0f),
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
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.white
                                                              .withOpacity(
                                                                  0.8)),
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
                                                          'images/Home/wheat1.jpg',
                                                          fit: BoxFit.fill,
                                                          width: screenWidth,
                                                          height: screenHeight,
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
                                                              0xffFFFFFF)
                                                          .withOpacity(0.9),
                                                    ),
                                                    child: const Text(
                                                      '5% OFF',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xff028a0f),
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
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.white
                                                              .withOpacity(
                                                                  0.8)),
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
                                                          fit: BoxFit.fill,
                                                          height: screenHeight,
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
                                                              0xffFFFFFF)
                                                          .withOpacity(0.9),
                                                    ),
                                                    child: const Text(
                                                      '3% OFF',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xff028a0f),
                                                          fontFamily:
                                                              'Quicksand-Bold'),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 16.0),
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
                                                        border: Border.all(
                                                            color: Colors.white
                                                                .withOpacity(
                                                                    0.8)),
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
                                                            fit: BoxFit.fill,
                                                            width: screenWidth,
                                                            height:
                                                                screenHeight,
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
                                                                0xff028a0f),
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
                                                        border: Border.all(
                                                            color: Colors.white
                                                                .withOpacity(
                                                                    0.8)),
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
                                                            fit: BoxFit.fill,
                                                            height:
                                                                screenHeight,
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
                                                                0xff028a0f),
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
                                                        border: Border.all(
                                                            color: Colors.white
                                                                .withOpacity(
                                                                    0.8)),
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
                                                            fit: BoxFit.fill,
                                                            height:
                                                                screenHeight,
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
                                                                0xff028a0f),
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
