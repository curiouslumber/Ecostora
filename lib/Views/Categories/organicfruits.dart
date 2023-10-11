import 'package:ecostore/ViewModel/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OrganicFruits extends StatelessWidget {
  OrganicFruits({super.key});

  final c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(color: Color(0xffFFFDDB)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      c.pageIndex.value = 0;
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color(0xff028a0f),
                    ),
                  ),
                  Text(
                    'Organic Fruits',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xff028a0f),
                        fontFamily: 'Quicksand-SemiBold'),
                  ),
                  Icon(
                    Icons.filter_alt_outlined,
                    color: const Color(0xff028a0f).withOpacity(0.8),
                  )
                ],
              ),
            ),
            Container(
              width: 90.w,
              height: 20.5.h,
              decoration: BoxDecoration(
                  color: const Color(0xff028a0f),
                  borderRadius: BorderRadius.circular(6.0)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 1.5.h),
                      width: 56.w,
                      // color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0))),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
                            child: Text(
                              'Organic Fruits',
                              style: TextStyle(
                                  fontFamily: 'Quicksand-Medium',
                                  color: const Color.fromARGB(255, 1, 102, 11),
                                  fontSize: 10.sp),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 8.0, top: 3.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Apples',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand-Medium',
                                      fontSize: 14.sp,
                                      color: Colors.white),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 1.h),
                                  child: Text(
                                    'Fresh, crisp, and pesticide-free apples sourced from local organic farms.',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand-Regular',
                                      fontSize: 10.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 2.2.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$2.99 per lb',
                                        style: TextStyle(
                                          fontFamily: 'Quicksand-SemiBold',
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        '120+ buys',
                                        style: TextStyle(
                                          fontFamily: 'Quicksand-Medium',
                                          fontSize: 10.sp,
                                          color: Colors.white,
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
                    ),
                    SizedBox(
                      width: 30.w,
                      child: Container(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(6.0)),
                                  color: Colors.white,
                                ),
                                width: 28.0000.w,
                                height: 15.0000.h,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.asset(
                                    'images/Categories/apples.jpg',
                                    width: 28.0000.w,
                                    height: 15.0000.h,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star_outline,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              )
                            ]),
                      ),
                    )
                  ]),
            ),
            Container(
              height: 3.h,
            ),
            Container(
              width: 90.w,
              height: 20.5.h,
              decoration: BoxDecoration(
                  color: const Color(0xff028a0f),
                  borderRadius: BorderRadius.circular(6.0)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 1.5.h),
                      width: 56.w,
                      // color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0))),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
                            child: Text(
                              'Organic Fruits',
                              style: TextStyle(
                                  fontFamily: 'Quicksand-Medium',
                                  color: const Color.fromARGB(255, 1, 102, 11),
                                  fontSize: 10.sp),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 8.0, top: 3.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Spinach',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand-Medium',
                                      fontSize: 14.sp,
                                      color: Colors.white),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 1.h),
                                  child: Text(
                                    'Nutrient-rich organic spinach leaves, perfect for salads and smoothies.',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand-Regular',
                                      fontSize: 10.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 2.2.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$3.49 per bunch',
                                        style: TextStyle(
                                          fontFamily: 'Quicksand-SemiBold',
                                          fontSize: 11.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        '20+ buys',
                                        style: TextStyle(
                                          fontFamily: 'Quicksand-Medium',
                                          fontSize: 10.sp,
                                          color: Colors.white,
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
                    ),
                    SizedBox(
                      width: 30.w,
                      child: Container(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(6.0)),
                                  color: Colors.white,
                                ),
                                width: 28.0000.w,
                                height: 15.0000.h,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.asset(
                                    'images/Categories/spinach.jpg',
                                    width: 28.0000.w,
                                    height: 15.0000.h,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star_outline,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              )
                            ]),
                      ),
                    )
                  ]),
            ),
            Container(
              height: 3.h,
            ),
            Container(
              width: 90.w,
              height: 20.5.h,
              decoration: BoxDecoration(
                  color: const Color(0xff028a0f),
                  borderRadius: BorderRadius.circular(6.0)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 1.5.h),
                      width: 56.w,
                      // color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0))),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
                            child: Text(
                              'Organic Fruits',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 1, 102, 11),
                                  fontFamily: 'Quicksand-Medium',
                                  fontSize: 10.sp),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 8.0, top: 3.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Avocados',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand-Medium',
                                      fontSize: 14.sp,
                                      color: Colors.white),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 1.h),
                                  child: Text(
                                    'Creamy and delicious organic avocados, packed with healthy fats and nutrients.',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand-Regular',
                                      fontSize: 10.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 2.2.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$1.99 each',
                                        style: TextStyle(
                                          fontFamily: 'Quicksand-SemiBold',
                                          fontSize: 11.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        '20+ buys',
                                        style: TextStyle(
                                          fontFamily: 'Quicksand-Medium',
                                          fontSize: 10.sp,
                                          color: Colors.white,
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
                    ),
                    SizedBox(
                      width: 30.w,
                      child: Container(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(6.0)),
                                  color: Colors.white,
                                ),
                                width: 28.0000.w,
                                height: 15.0000.h,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.asset(
                                    'images/Categories/avacados.jpg',
                                    width: 28.0000.w,
                                    height: 15.0000.h,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star_outline,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              )
                            ]),
                      ),
                    )
                  ]),
            ),
            Container(
              height: 3.h,
            ),
            Container(
              width: 90.w,
              height: 20.5.h,
              decoration: BoxDecoration(
                  color: const Color(0xff028a0f),
                  borderRadius: BorderRadius.circular(6.0)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 1.5.h),
                      width: 56.w,
                      // color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0))),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
                            child: Text(
                              'Organic Fruits',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 1, 102, 11),
                                  fontFamily: 'Quicksand-Medium',
                                  fontSize: 10.sp),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 8.0, top: 3.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Avocados',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand-Medium',
                                      fontSize: 14.sp,
                                      color: Colors.white),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 1.h),
                                  child: Text(
                                    'Creamy and delicious organic avocados, packed with healthy fats and nutrients.',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand-Regular',
                                      fontSize: 10.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 0.8.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$1.99 each',
                                        style: TextStyle(
                                          fontFamily: 'Quicksand-SemiBold',
                                          fontSize: 10.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        '20+ buys',
                                        style: TextStyle(
                                          fontFamily: 'Quicksand-Medium',
                                          fontSize: 10.sp,
                                          color: Colors.white,
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
                    ),
                    SizedBox(
                      width: 30.w,
                      child: Container(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(6.0)),
                                  color: Colors.white,
                                ),
                                width: 28.0000.w,
                                height: 15.0000.h,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.asset(
                                    'images/Categories/avacados.jpg',
                                    width: 28.0000.w,
                                    height: 15.0000.h,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star_outline,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              )
                            ]),
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
