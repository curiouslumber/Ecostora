import 'package:ecostore/ViewModel/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

class Register extends StatelessWidget {
  Register({super.key});

  final c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff128C7E),
        foregroundColor: const Color(0xffFFFCCA),
      ),
      body: Container(
        alignment: Alignment.center,
        color: const Color(0xffFFFDDB),
        child: Obx(
          () => SingleChildScrollView(
            child: c.registerPageFlow.value == 0
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Register',
                        style: TextStyle(
                            color: const Color(0xff128C7E),
                            fontSize: 24.sp,
                            fontFamily: 'Quicksand-SemiBold'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 4.h),
                        alignment: Alignment.centerLeft,
                        // color: Colors.blue,
                        width: 70.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Full Name',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: const Color(0xff128C7E),
                                  fontFamily: 'Quicksand-SemiBold'),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8.0)),
                                  borderSide: BorderSide(
                                      color:
                                          const Color.fromARGB(0, 102, 102, 102)
                                              .withOpacity(0.2),
                                      width: 0.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8.0)),
                                  borderSide: BorderSide(
                                      color: Colors.white.withOpacity(0.2),
                                      width: 0.0),
                                ),
                                fillColor: const Color(0xff128C7E),
                                filled: true,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 4.h),
                        alignment: Alignment.centerLeft,
                        // color: Colors.blue,
                        width: 70.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Username',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: const Color(0xff128C7E),
                                  fontFamily: 'Quicksand-SemiBold'),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8.0)),
                                  borderSide: BorderSide(
                                      color:
                                          const Color.fromARGB(0, 102, 102, 102)
                                              .withOpacity(0.2),
                                      width: 0.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8.0)),
                                  borderSide: BorderSide(
                                      color: Colors.white.withOpacity(0.2),
                                      width: 0.0),
                                ),
                                fillColor: const Color(0xff128C7E),
                                filled: true,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 4.h),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          onPressed: () {
                            c.registerPageFlow.value += 1;
                          },
                          height: 8.h,
                          color: const Color(0xff128C7E),
                          child: Text(
                            'Next',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand-SemiBold',
                                fontSize: 12.sp),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // color: Colors.orange,
                            margin: EdgeInsets.symmetric(
                                vertical: 3.h, horizontal: 4.w),
                            width: 26.w,
                            alignment: Alignment.center,
                            child: const Divider(
                              color: Color(0xff128C7E),
                              thickness: 1.0,
                            ),
                          ),
                          Text(
                            'OR',
                            style: TextStyle(
                                color: const Color(0xff128C7E),
                                fontSize: 12.sp,
                                fontFamily: 'Quicksand-Bold'),
                          ),
                          Container(
                            // color: Colors.orange,
                            margin: EdgeInsets.symmetric(
                                vertical: 3.h, horizontal: 4.w),
                            width: 26.w,
                            alignment: Alignment.center,
                            child: const Divider(
                              color: Color(0xff128C7E),
                              thickness: 1.0,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 60.w,
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          onPressed: () {
                            print("Button Pressed");
                          },
                          height: 8.h,
                          color: const Color(0xff128C7E),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Ionicons.logo_google,
                                size: 16.sp,
                                color: const Color(0xffFFFCCA),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 2.w),
                                child: Text(
                                  'Sign Up With Google',
                                  style: TextStyle(
                                      color: const Color(0xffFFFCCA),
                                      fontFamily: 'Quicksand-Bold',
                                      fontSize: 12.sp),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : (c.registerPageFlow.value == 1
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Add Login Details',
                            style: TextStyle(
                                color: const Color(0xff128C7E),
                                fontSize: 24.sp,
                                fontFamily: 'Quicksand-SemiBold'),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4.h),
                            alignment: Alignment.centerLeft,
                            // color: Colors.blue,
                            width: 70.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email Address',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: const Color(0xff128C7E),
                                      fontFamily: 'Quicksand-SemiBold'),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8.0)),
                                      borderSide: BorderSide(
                                          color: const Color.fromARGB(
                                                  0, 102, 102, 102)
                                              .withOpacity(0.2),
                                          width: 0.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8.0)),
                                      borderSide: BorderSide(
                                          color: Colors.white.withOpacity(0.2),
                                          width: 0.0),
                                    ),
                                    fillColor: const Color(0xff128C7E),
                                    filled: true,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4.h),
                            alignment: Alignment.centerLeft,
                            // color: Colors.blue,
                            width: 70.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Password',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: const Color(0xff128C7E),
                                      fontFamily: 'Quicksand-SemiBold'),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8.0)),
                                      borderSide: BorderSide(
                                          color: const Color.fromARGB(
                                                  0, 102, 102, 102)
                                              .withOpacity(0.2),
                                          width: 0.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8.0)),
                                      borderSide: BorderSide(
                                          color: Colors.white.withOpacity(0.2),
                                          width: 0.0),
                                    ),
                                    fillColor: const Color(0xff128C7E),
                                    filled: true,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4.h),
                            alignment: Alignment.centerLeft,
                            // color: Colors.blue,
                            width: 70.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Confirm Password',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: const Color(0xff128C7E),
                                      fontFamily: 'Quicksand-SemiBold'),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8.0)),
                                      borderSide: BorderSide(
                                          color: const Color.fromARGB(
                                                  0, 102, 102, 102)
                                              .withOpacity(0.2),
                                          width: 0.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8.0)),
                                      borderSide: BorderSide(
                                          color: Colors.white.withOpacity(0.2),
                                          width: 0.0),
                                    ),
                                    fillColor: const Color(0xff128C7E),
                                    filled: true,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 30.w,
                                margin: EdgeInsets.only(top: 4.h),
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  onPressed: () {
                                    c.registerPageFlow.value -= 1;
                                  },
                                  height: 8.h,
                                  color: const Color(0xff128C7E),
                                  child: Text(
                                    'Back',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Quicksand-SemiBold',
                                        fontSize: 12.sp),
                                  ),
                                ),
                              ),
                              Container(
                                width: 10.w,
                              ),
                              Container(
                                width: 30.w,
                                margin: EdgeInsets.only(top: 4.h),
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  onPressed: () {
                                    c.registerPageFlow.value += 1;
                                  },
                                  height: 8.h,
                                  color: const Color(0xff128C7E),
                                  child: Text(
                                    'Next',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Quicksand-SemiBold',
                                        fontSize: 12.sp),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Add Location Info',
                            style: TextStyle(
                                color: const Color(0xff128C7E),
                                fontSize: 24.sp,
                                fontFamily: 'Quicksand-SemiBold'),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4.h),
                            alignment: Alignment.centerLeft,
                            // color: Colors.blue,
                            width: 70.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 0.5.h),
                                  child: Text(
                                    'Phone Number',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: const Color(0xff128C7E),
                                        fontFamily: 'Quicksand-SemiBold'),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20.w,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(8.0)),
                                            borderSide: BorderSide(
                                                color: const Color.fromARGB(
                                                        0, 102, 102, 102)
                                                    .withOpacity(0.2),
                                                width: 0.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(8.0)),
                                            borderSide: BorderSide(
                                                color: Colors.white
                                                    .withOpacity(0.2),
                                                width: 0.0),
                                          ),
                                          fillColor: const Color(0xff128C7E),
                                          filled: true,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 45.w,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(8.0)),
                                            borderSide: BorderSide(
                                                color: const Color.fromARGB(
                                                        0, 102, 102, 102)
                                                    .withOpacity(0.2),
                                                width: 0.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(8.0)),
                                            borderSide: BorderSide(
                                                color: Colors.white
                                                    .withOpacity(0.2),
                                                width: 0.0),
                                          ),
                                          fillColor: const Color(0xff128C7E),
                                          filled: true,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4.h),
                            alignment: Alignment.centerLeft,
                            // color: Colors.blue,
                            width: 70.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 0.5.h),
                                  child: Text(
                                    'Country',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: const Color(0xff128C7E),
                                        fontFamily: 'Quicksand-SemiBold'),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 30.w,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(8.0)),
                                            borderSide: BorderSide(
                                                color: const Color.fromARGB(
                                                        0, 102, 102, 102)
                                                    .withOpacity(0.2),
                                                width: 0.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(8.0)),
                                            borderSide: BorderSide(
                                                color: Colors.white
                                                    .withOpacity(0.2),
                                                width: 0.0),
                                          ),
                                          fillColor: const Color(0xff128C7E),
                                          filled: true,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30.w,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(8.0)),
                                            borderSide: BorderSide(
                                                color: const Color.fromARGB(
                                                        0, 102, 102, 102)
                                                    .withOpacity(0.2),
                                                width: 0.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(8.0)),
                                            borderSide: BorderSide(
                                                color: Colors.white
                                                    .withOpacity(0.2),
                                                width: 0.0),
                                          ),
                                          fillColor: const Color(0xff128C7E),
                                          filled: true,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4.h),
                            alignment: Alignment.centerLeft,
                            // color: Colors.blue,
                            width: 70.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Confirm Password',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: const Color(0xff128C7E),
                                      fontFamily: 'Quicksand-SemiBold'),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8.0)),
                                      borderSide: BorderSide(
                                          color: const Color.fromARGB(
                                                  0, 102, 102, 102)
                                              .withOpacity(0.2),
                                          width: 0.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8.0)),
                                      borderSide: BorderSide(
                                          color: Colors.white.withOpacity(0.2),
                                          width: 0.0),
                                    ),
                                    fillColor: const Color(0xff128C7E),
                                    filled: true,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 30.w,
                                margin: EdgeInsets.only(top: 4.h),
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  onPressed: () {
                                    c.registerPageFlow.value -= 1;
                                  },
                                  height: 8.h,
                                  color: const Color(0xff128C7E),
                                  child: Text(
                                    'Back',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Quicksand-SemiBold',
                                        fontSize: 12.sp),
                                  ),
                                ),
                              ),
                              Container(
                                width: 10.w,
                              ),
                              Container(
                                width: 30.w,
                                margin: EdgeInsets.only(top: 4.h),
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  onPressed: () {
                                    c.registerPageFlow.value += 1;
                                  },
                                  height: 8.h,
                                  color: const Color(0xff128C7E),
                                  child: Text(
                                    'Next',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Quicksand-SemiBold',
                                        fontSize: 12.sp),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
          ),
        ),
      ),
    );
  }
}
