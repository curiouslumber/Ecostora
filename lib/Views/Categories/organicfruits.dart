import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecostore/ViewModel/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
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
            MaterialButton(
              onPressed: () {
                print("pressed");
              },
              padding: EdgeInsets.zero,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              child: Container(
                width: 90.w,
                height: 20.5.h,
                decoration: BoxDecoration(
                    color: const Color(0xff028a0f),
                    borderRadius: BorderRadius.circular(6.0)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          padding: EdgeInsets.only(top: 1.5.h, right: 1.w),
                          // color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(6.0),
                                          bottomRight: Radius.circular(6.0))),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 4.0),
                                  child: AutoSizeText(
                                    'Organic Fruits',
                                    style: TextStyle(
                                        fontFamily: 'Quicksand-Medium',
                                        color: const Color(0xff028a0f),
                                        fontSize: 24.sp),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  // color: Colors.amber,
                                  padding: EdgeInsets.only(
                                      left: 2.w,
                                      top: 0.2.h,
                                      bottom: 0.2.h,
                                      right: 1.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          // color: Colors.amber,
                                          alignment: Alignment.topLeft,
                                          child: AutoSizeText(
                                            'Apples',
                                            style: TextStyle(
                                                fontFamily: 'Quicksand-Medium',
                                                fontSize: 20.sp,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 7,
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          // color: Colors.amber,
                                          margin: EdgeInsets.only(top: 0.4.h),
                                          child: AutoSizeText(
                                            'Fresh, crisp, and pesticide-free apples sourced from local organic farms.',
                                            style: TextStyle(
                                              fontFamily: 'Quicksand-Regular',
                                              fontSize: 11.sp,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          alignment: Alignment.bottomLeft,
                                          margin:
                                              EdgeInsets.only(bottom: 0.6.h),
                                          // color: Colors.green,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              AutoSizeText(
                                                '\$2.99 per lb',
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Quicksand-SemiBold',
                                                  fontSize: 12.sp,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 1.w),
                                                child: AutoSizeText(
                                                  '120+ buys',
                                                  style: TextStyle(
                                                    fontFamily:
                                                        'Quicksand-Medium',
                                                    fontSize: 12.sp,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 14,
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  fit: StackFit.expand,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 1.0.h,
                                          bottom: 0.5.h,
                                          right: 1.5.w),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(6.0)),
                                        color: Colors.white,
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        child: Image.asset(
                                          'images/Categories/apples.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 1.5.h, right: 2.25.w),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              print("pressed 1");
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle),
                                              width: 8.w,
                                              height: 4.h,
                                              child: Icon(
                                                Icons.favorite_border_sharp,
                                                color: const Color(0xff028a0f),
                                                size: 4.5.w,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              print('pressed 2');
                                            },
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(top: 0.5.h),
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle),
                                              width: 8.w,
                                              height: 4.h,
                                              child: Icon(
                                                Ionicons.cart_outline,
                                                color: const Color(0xff028a0f),
                                                size: 5.w,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  // color: Colors.amber,
                                  margin: EdgeInsets.only(
                                      bottom: 0.6.h, right: 1.5.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.white, size: 5.6.w),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 5.6.w,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 5.6.w,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 5.6.w,
                                      ),
                                      Icon(
                                        Icons.star_outline,
                                        color: Colors.white,
                                        size: 5.6.w,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ]),
                      )
                    ]),
              ),
            ),
            Container(
              height: 3.h,
            ),
            MaterialButton(
              onPressed: () {
                print("pressed");
              },
              padding: EdgeInsets.zero,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              child: Container(
                width: 90.w,
                height: 20.5.h,
                decoration: BoxDecoration(
                    color: const Color(0xff028a0f),
                    borderRadius: BorderRadius.circular(6.0)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          padding: EdgeInsets.only(top: 1.5.h, right: 1.w),
                          // color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(6.0),
                                          bottomRight: Radius.circular(6.0))),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 4.0),
                                  child: AutoSizeText(
                                    'Organic Fruits',
                                    style: TextStyle(
                                        fontFamily: 'Quicksand-Medium',
                                        color: const Color(0xff028a0f),
                                        fontSize: 24.sp),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  // color: Colors.amber,
                                  padding: EdgeInsets.only(
                                      left: 2.w,
                                      top: 0.2.h,
                                      bottom: 0.2.h,
                                      right: 1.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          // color: Colors.amber,
                                          alignment: Alignment.topLeft,
                                          child: AutoSizeText(
                                            'Spinach',
                                            style: TextStyle(
                                                fontFamily: 'Quicksand-Medium',
                                                fontSize: 20.sp,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 7,
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          // color: Colors.amber,
                                          margin: EdgeInsets.only(top: 0.4.h),
                                          child: AutoSizeText(
                                            'Nutrient-rich organic spinach leaves, perfect for salads and smoothies.',
                                            style: TextStyle(
                                              fontFamily: 'Quicksand-Regular',
                                              fontSize: 11.sp,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          alignment: Alignment.bottomLeft,
                                          margin:
                                              EdgeInsets.only(bottom: 0.6.h),
                                          // color: Colors.green,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              AutoSizeText(
                                                '\$3.49 per bunch',
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Quicksand-SemiBold',
                                                  fontSize: 12.sp,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 1.w),
                                                child: AutoSizeText(
                                                  '100+ buys',
                                                  style: TextStyle(
                                                    fontFamily:
                                                        'Quicksand-Medium',
                                                    fontSize: 12.sp,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 14,
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  fit: StackFit.expand,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 1.0.h,
                                          bottom: 0.5.h,
                                          right: 1.5.w),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(6.0)),
                                        color: Colors.white,
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        child: Image.asset(
                                          'images/Categories/spinach.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 1.5.h, right: 2.25.w),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              print("pressed 1");
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle),
                                              width: 8.w,
                                              height: 4.h,
                                              child: Icon(
                                                Icons.favorite_border_sharp,
                                                color: const Color(0xff028a0f),
                                                size: 4.5.w,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              print('pressed 2');
                                            },
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(top: 0.5.h),
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle),
                                              width: 8.w,
                                              height: 4.h,
                                              child: Icon(
                                                Ionicons.cart_outline,
                                                color: const Color(0xff028a0f),
                                                size: 5.w,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  // color: Colors.amber,
                                  margin: EdgeInsets.only(
                                      bottom: 0.6.h, right: 1.5.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.white, size: 5.6.w),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 5.6.w,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 5.6.w,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 5.6.w,
                                      ),
                                      Icon(
                                        Icons.star_outline,
                                        color: Colors.white,
                                        size: 5.6.w,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ]),
                      )
                    ]),
              ),
            ),
            Container(
              height: 3.h,
            ),
            MaterialButton(
              onPressed: () {
                print("pressed");
              },
              padding: EdgeInsets.zero,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              child: Container(
                width: 90.w,
                height: 20.5.h,
                decoration: BoxDecoration(
                    color: const Color(0xff028a0f),
                    borderRadius: BorderRadius.circular(6.0)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          padding: EdgeInsets.only(top: 1.5.h, right: 1.w),
                          // color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(6.0),
                                          bottomRight: Radius.circular(6.0))),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 4.0),
                                  child: AutoSizeText(
                                    'Organic Fruits',
                                    style: TextStyle(
                                        fontFamily: 'Quicksand-Medium',
                                        color: const Color(0xff028a0f),
                                        fontSize: 24.sp),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  // color: Colors.amber,
                                  padding: EdgeInsets.only(
                                      left: 2.w,
                                      top: 0.2.h,
                                      bottom: 0.2.h,
                                      right: 1.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          // color: Colors.amber,
                                          alignment: Alignment.topLeft,
                                          child: AutoSizeText(
                                            'Avacados',
                                            style: TextStyle(
                                                fontFamily: 'Quicksand-Medium',
                                                fontSize: 20.sp,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 7,
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          // color: Colors.amber,
                                          margin: EdgeInsets.only(top: 0.4.h),
                                          child: AutoSizeText(
                                            'Creamy and delicious organic avocados, packed with healthy fats and nutrients.',
                                            style: TextStyle(
                                              fontFamily: 'Quicksand-Regular',
                                              fontSize: 11.sp,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          alignment: Alignment.bottomLeft,
                                          margin:
                                              EdgeInsets.only(bottom: 0.6.h),
                                          // color: Colors.green,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              AutoSizeText(
                                                '\$1.99 each',
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Quicksand-SemiBold',
                                                  fontSize: 12.sp,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 1.w),
                                                child: AutoSizeText(
                                                  '120+ buys',
                                                  style: TextStyle(
                                                    fontFamily:
                                                        'Quicksand-Medium',
                                                    fontSize: 12.sp,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 14,
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  fit: StackFit.expand,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 1.0.h,
                                          bottom: 0.5.h,
                                          right: 1.5.w),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(6.0)),
                                        color: Colors.white,
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        child: Image.asset(
                                          'images/Categories/avacados.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 1.5.h, right: 2.25.w),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              print("pressed 1");
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle),
                                              width: 8.w,
                                              height: 4.h,
                                              child: Icon(
                                                Icons.favorite_border_sharp,
                                                color: const Color(0xff028a0f),
                                                size: 4.5.w,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              print('pressed 2');
                                            },
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(top: 0.5.h),
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle),
                                              width: 8.w,
                                              height: 4.h,
                                              child: Icon(
                                                Ionicons.cart_outline,
                                                color: const Color(0xff028a0f),
                                                size: 5.w,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  // color: Colors.amber,
                                  margin: EdgeInsets.only(
                                      bottom: 0.6.h, right: 1.5.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.white, size: 5.6.w),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 5.6.w,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 5.6.w,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 5.6.w,
                                      ),
                                      Icon(
                                        Icons.star_outline,
                                        color: Colors.white,
                                        size: 5.6.w,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ]),
                      )
                    ]),
              ),
            ),
            Container(
              height: 3.h,
            ),
            MaterialButton(
              onPressed: () {
                print("pressed");
              },
              padding: EdgeInsets.zero,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              child: Container(
                width: 90.w,
                height: 20.5.h,
                decoration: BoxDecoration(
                    color: const Color(0xff028a0f),
                    borderRadius: BorderRadius.circular(6.0)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          padding: EdgeInsets.only(top: 1.5.h, right: 1.w),
                          // color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(6.0),
                                          bottomRight: Radius.circular(6.0))),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 4.0),
                                  child: AutoSizeText(
                                    'Organic Fruits',
                                    style: TextStyle(
                                        fontFamily: 'Quicksand-Medium',
                                        color: const Color(0xff028a0f),
                                        fontSize: 24.sp),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  // color: Colors.amber,
                                  padding: EdgeInsets.only(
                                      left: 2.w,
                                      top: 0.2.h,
                                      bottom: 0.2.h,
                                      right: 1.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          // color: Colors.amber,
                                          alignment: Alignment.topLeft,
                                          child: AutoSizeText(
                                            'Apples',
                                            style: TextStyle(
                                                fontFamily: 'Quicksand-Medium',
                                                fontSize: 20.sp,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 7,
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          // color: Colors.amber,
                                          margin: EdgeInsets.only(top: 0.4.h),
                                          child: AutoSizeText(
                                            'Fresh, crisp, and pesticide-free apples sourced from local organic farms.',
                                            style: TextStyle(
                                              fontFamily: 'Quicksand-Regular',
                                              fontSize: 11.sp,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          alignment: Alignment.bottomLeft,
                                          margin:
                                              EdgeInsets.only(bottom: 0.6.h),
                                          // color: Colors.green,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              AutoSizeText(
                                                '\$2.99 per lb',
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Quicksand-SemiBold',
                                                  fontSize: 12.sp,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 1.w),
                                                child: AutoSizeText(
                                                  '120+ buys',
                                                  style: TextStyle(
                                                    fontFamily:
                                                        'Quicksand-Medium',
                                                    fontSize: 12.sp,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 14,
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  fit: StackFit.expand,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 1.0.h,
                                          bottom: 0.5.h,
                                          right: 1.5.w),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(6.0)),
                                        color: Colors.white,
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        child: Image.asset(
                                          'images/Categories/apples.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 1.5.h, right: 2.25.w),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              print("pressed 1");
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle),
                                              width: 8.w,
                                              height: 4.h,
                                              child: Icon(
                                                Icons.favorite_border_sharp,
                                                color: const Color(0xff028a0f),
                                                size: 4.5.w,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              print('pressed 2');
                                            },
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(top: 0.5.h),
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle),
                                              width: 8.w,
                                              height: 4.h,
                                              child: Icon(
                                                Ionicons.cart_outline,
                                                color: const Color(0xff028a0f),
                                                size: 5.w,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  // color: Colors.amber,
                                  margin: EdgeInsets.only(
                                      bottom: 0.6.h, right: 1.5.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.white, size: 5.6.w),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 5.6.w,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 5.6.w,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 5.6.w,
                                      ),
                                      Icon(
                                        Icons.star_outline,
                                        color: Colors.white,
                                        size: 5.6.w,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ]),
                      )
                    ]),
              ),
            ),
            Container(
              height: 3.h,
            ),
          ],
        ),
      ),
    );
  }
}
