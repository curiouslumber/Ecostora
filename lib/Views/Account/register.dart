import 'package:ecostore/ViewModel/controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

class Register extends StatelessWidget {
  Register({super.key});

  final c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    TextEditingController fullnameController = TextEditingController();
    TextEditingController usernameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    TextEditingController phoneNumber = TextEditingController();
    var selectedCountry = "India";
    var state = "Maharashtra";
    var city = "Mumbai";
    TextEditingController pincodeController = TextEditingController();

    return Obx(
      () => Scaffold(
        appBar: c.showBackButton.value
            ? AppBar(
                backgroundColor: const Color(0xff128C7E),
                foregroundColor: const Color(0xffFFFCCA),
                leading: IconButton(
                  onPressed: () {
                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Registration Aborted"),
                    ));
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_rounded),
                ),
              )
            : AppBar(
                backgroundColor: const Color(0xff128C7E),
                foregroundColor: const Color(0xffFFFCCA),
              ),
        body: Container(
          alignment: Alignment.center,
          color: const Color(0xffFFFDDB),
          child: c.isLoading.value
              ? const CircularProgressIndicator(
                  color: Color(0xff128C7E),
                  backgroundColor: Color(0xffFFFDDB),
                )
              : SingleChildScrollView(
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
                                  Container(
                                    margin: EdgeInsets.only(bottom: 0.5.h),
                                    child: Text(
                                      'Full Name',
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: const Color(0xff128C7E),
                                          fontFamily: 'Quicksand-SemiBold'),
                                    ),
                                  ),
                                  TextFormField(
                                    controller: fullnameController,
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
                                            color:
                                                Colors.white.withOpacity(0.2),
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
                                  Container(
                                    margin: EdgeInsets.only(bottom: 0.5.h),
                                    child: Text(
                                      'Username',
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: const Color(0xff128C7E),
                                          fontFamily: 'Quicksand-SemiBold'),
                                    ),
                                  ),
                                  TextFormField(
                                    controller: usernameController,
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
                                            color:
                                                Colors.white.withOpacity(0.2),
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
                                onPressed: () async {
                                  await c.checkUserConnection();
                                  if (!c.activeConnection.value) {
                                    // ignore: use_build_context_synchronously
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text("No internet connection"),
                                    ));
                                  } else {
                                    void showMessage(String message) {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: const Text("Error"),
                                              content: Text(message),
                                              actions: [
                                                TextButton(
                                                  child: const Text("Ok"),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                )
                                              ],
                                            );
                                          });
                                    }

                                    c.showBackButton.value = true;
                                    c.isLoading.value = true;
                                    // SignInMethods service = SignInMethods();
                                    try {
                                      // await service.signInWithGoogle();

                                      print(c.registerPageFlow.value);
                                      c.registerPageFlow.value = 4;
                                      c.signUpWithGoogleProcess.value = true;
                                    } catch (e) {
                                      if (e is FirebaseAuthException) {
                                        showMessage(e.message!);
                                      }
                                    }

                                    c.isLoading.value = false;
                                  }
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 0.5.h),
                                        child: Text(
                                          'Email Address',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: const Color(0xff128C7E),
                                              fontFamily: 'Quicksand-SemiBold'),
                                        ),
                                      ),
                                      TextFormField(
                                        controller: emailController,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 0.5.h),
                                        child: Text(
                                          'Password',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: const Color(0xff128C7E),
                                              fontFamily: 'Quicksand-SemiBold'),
                                        ),
                                      ),
                                      TextFormField(
                                        controller: passwordController,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 0.5.h),
                                        child: Text(
                                          'Confirm Password',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: const Color(0xff128C7E),
                                              fontFamily: 'Quicksand-SemiBold'),
                                        ),
                                      ),
                                      TextFormField(
                                        controller: confirmPasswordController,
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
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 32.w,
                                      margin: EdgeInsets.only(top: 4.h),
                                      child: MaterialButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
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
                                      width: 5.w,
                                    ),
                                    Container(
                                      width: 32.w,
                                      margin: EdgeInsets.only(top: 4.h),
                                      child: MaterialButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
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
                          : (c.registerPageFlow.value == 2
                              ? Column(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin:
                                                EdgeInsets.only(bottom: 0.5.h),
                                            child: Text(
                                              'Phone Number',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color:
                                                      const Color(0xff128C7E),
                                                  fontFamily:
                                                      'Quicksand-SemiBold'),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                alignment: Alignment.center,
                                                height: 9.5.h,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    color: const Color(
                                                        0xff128C7E)),
                                                width: 25.w,
                                                margin:
                                                    EdgeInsets.only(right: 2.w),
                                                padding: EdgeInsets.only(
                                                    left: 1.9.w),
                                                child: DropdownButton<String>(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  padding: EdgeInsets.zero,
                                                  dropdownColor:
                                                      const Color(0xff128C7E),
                                                  underline:
                                                      Container(), // Removes the underline
                                                  icon: const Icon(
                                                    Icons.arrow_drop_down,
                                                    color: Color(0xffFFFDDB),
                                                  ), // Add your custom icon
                                                  value:
                                                      'Option 1', // Set the initially selected value
                                                  onChanged:
                                                      (String? newValue) {
                                                    // Handle dropdown item selection
                                                  },
                                                  items: <String>[
                                                    'Option 1',
                                                    'Option 2',
                                                    'Option 3'
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(
                                                        value,
                                                        style: TextStyle(
                                                            color: const Color(
                                                                0xffFFFDDB),
                                                            fontSize: 12.sp,
                                                            fontFamily:
                                                                'Quicksand-SemiBold'),
                                                      ),
                                                    );
                                                  }).toList(),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 43.w,
                                                child: TextFormField(
                                                  controller: phoneNumber,
                                                  decoration: InputDecoration(
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  8.0)),
                                                      borderSide: BorderSide(
                                                          color: const Color
                                                                  .fromARGB(0,
                                                                  102, 102, 102)
                                                              .withOpacity(0.2),
                                                          width: 0.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  8.0)),
                                                      borderSide: BorderSide(
                                                          color: Colors.white
                                                              .withOpacity(0.2),
                                                          width: 0.0),
                                                    ),
                                                    fillColor:
                                                        const Color(0xff128C7E),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 0.5.h),
                                                    child: Text(
                                                      'Country',
                                                      style: TextStyle(
                                                          fontSize: 16.sp,
                                                          color: const Color(
                                                              0xff128C7E),
                                                          fontFamily:
                                                              'Quicksand-SemiBold'),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xff128C7E),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0)),
                                                    height: 9.5.h,
                                                    width: 32.w,
                                                    alignment: Alignment.center,
                                                    child:
                                                        DropdownButton<String>(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      padding: EdgeInsets.zero,
                                                      dropdownColor:
                                                          const Color(
                                                              0xff128C7E),
                                                      underline:
                                                          Container(), // Removes the underline
                                                      icon: const Icon(
                                                        Icons.arrow_drop_down,
                                                        color:
                                                            Color(0xffFFFDDB),
                                                      ), // Add your custom icon
                                                      value:
                                                          'Option 1', // Set the initially selected value
                                                      onChanged:
                                                          (String? newValue) {
                                                        // Handle dropdown item selection
                                                      },
                                                      items: <String>[
                                                        'Option 1',
                                                        'Option 2',
                                                        'Option 3'
                                                      ].map<
                                                              DropdownMenuItem<
                                                                  String>>(
                                                          (String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(
                                                            value,
                                                            style: TextStyle(
                                                                color: const Color(
                                                                    0xffFFFDDB),
                                                                fontSize: 12.sp,
                                                                fontFamily:
                                                                    'Quicksand-SemiBold'),
                                                          ),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 0.5.h),
                                                    child: Text(
                                                      'State',
                                                      style: TextStyle(
                                                          fontSize: 16.sp,
                                                          color: const Color(
                                                              0xff128C7E),
                                                          fontFamily:
                                                              'Quicksand-SemiBold'),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xff128C7E),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0)),
                                                    height: 9.5.h,
                                                    width: 32.w,
                                                    alignment: Alignment.center,
                                                    child:
                                                        DropdownButton<String>(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      padding: EdgeInsets.zero,
                                                      dropdownColor:
                                                          const Color(
                                                              0xff128C7E),
                                                      underline:
                                                          Container(), // Removes the underline
                                                      icon: const Icon(
                                                        Icons.arrow_drop_down,
                                                        color:
                                                            Color(0xffFFFDDB),
                                                      ), // Add your custom icon
                                                      value:
                                                          'Option 1', // Set the initially selected value
                                                      onChanged:
                                                          (String? newValue) {
                                                        // Handle dropdown item selection
                                                      },
                                                      items: <String>[
                                                        'Option 1',
                                                        'Option 2',
                                                        'Option 3'
                                                      ].map<
                                                              DropdownMenuItem<
                                                                  String>>(
                                                          (String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(
                                                            value,
                                                            style: TextStyle(
                                                                color: const Color(
                                                                    0xffFFFDDB),
                                                                fontSize: 12.sp,
                                                                fontFamily:
                                                                    'Quicksand-SemiBold'),
                                                          ),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ),
                                                ],
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 0.5.h),
                                                    child: Text(
                                                      'City',
                                                      style: TextStyle(
                                                          fontSize: 16.sp,
                                                          color: const Color(
                                                              0xff128C7E),
                                                          fontFamily:
                                                              'Quicksand-SemiBold'),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xff128C7E),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0)),
                                                    height: 9.5.h,
                                                    width: 32.w,
                                                    alignment: Alignment.center,
                                                    child:
                                                        DropdownButton<String>(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      padding: EdgeInsets.zero,
                                                      dropdownColor:
                                                          const Color(
                                                              0xff128C7E),
                                                      underline:
                                                          Container(), // Removes the underline
                                                      icon: const Icon(
                                                        Icons.arrow_drop_down,
                                                        color:
                                                            Color(0xffFFFDDB),
                                                      ), // Add your custom icon
                                                      value:
                                                          'Option 1', // Set the initially selected value
                                                      onChanged:
                                                          (String? newValue) {
                                                        // Handle dropdown item selection
                                                      },
                                                      items: <String>[
                                                        'Option 1',
                                                        'Option 2',
                                                        'Option 3'
                                                      ].map<
                                                              DropdownMenuItem<
                                                                  String>>(
                                                          (String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(
                                                            value,
                                                            style: TextStyle(
                                                                color: const Color(
                                                                    0xffFFFDDB),
                                                                fontSize: 12.sp,
                                                                fontFamily:
                                                                    'Quicksand-SemiBold'),
                                                          ),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 0.5.h),
                                                    child: Text(
                                                      'Pincode',
                                                      style: TextStyle(
                                                          fontSize: 16.sp,
                                                          color: const Color(
                                                              0xff128C7E),
                                                          fontFamily:
                                                              'Quicksand-SemiBold'),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 32.w,
                                                    child: TextFormField(
                                                      controller:
                                                          pincodeController,
                                                      decoration:
                                                          InputDecoration(
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          8.0)),
                                                          borderSide: BorderSide(
                                                              color: const Color
                                                                      .fromARGB(
                                                                      0,
                                                                      102,
                                                                      102,
                                                                      102)
                                                                  .withOpacity(
                                                                      0.2),
                                                              width: 0.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          8.0)),
                                                          borderSide: BorderSide(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.2),
                                                              width: 0.0),
                                                        ),
                                                        fillColor: const Color(
                                                            0xff128C7E),
                                                        filled: true,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        c.signUpWithGoogleProcess.value
                                            ? Container(
                                                width: 32.w,
                                                margin:
                                                    EdgeInsets.only(top: 4.h),
                                                child: MaterialButton(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0)),
                                                  onPressed: () {
                                                    c.registerPageFlow.value =
                                                        4;
                                                  },
                                                  height: 8.h,
                                                  color:
                                                      const Color(0xff128C7E),
                                                  child: Text(
                                                    'Back',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontFamily:
                                                            'Quicksand-SemiBold',
                                                        fontSize: 12.sp),
                                                  ),
                                                ),
                                              )
                                            : Container(
                                                width: 32.w,
                                                margin:
                                                    EdgeInsets.only(top: 4.h),
                                                child: MaterialButton(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0)),
                                                  onPressed: () {
                                                    c.registerPageFlow.value -=
                                                        1;
                                                  },
                                                  height: 8.h,
                                                  color:
                                                      const Color(0xff128C7E),
                                                  child: Text(
                                                    'Back',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontFamily:
                                                            'Quicksand-SemiBold',
                                                        fontSize: 12.sp),
                                                  ),
                                                ),
                                              ),
                                        Container(
                                          width: 5.w,
                                        ),
                                        Container(
                                          width: 32.w,
                                          margin: EdgeInsets.only(top: 4.h),
                                          child: MaterialButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0)),
                                            onPressed: () {
                                              c.registerPageFlow.value += 1;
                                            },
                                            height: 8.h,
                                            color: const Color(0xff128C7E),
                                            child: Text(
                                              'Next',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily:
                                                      'Quicksand-SemiBold',
                                                  fontSize: 12.sp),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              : (c.registerPageFlow.value == 3
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(bottom: 2.h),
                                          child: Text(
                                            'Review',
                                            style: TextStyle(
                                                color: const Color(0xff128C7E),
                                                fontSize: 24.sp,
                                                fontFamily:
                                                    'Quicksand-SemiBold'),
                                          ),
                                        ),
                                        Container(
                                          height: 50.h,
                                          width: 80.w,
                                          alignment: Alignment.topLeft,
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0, horizontal: 12.0),
                                          decoration: BoxDecoration(
                                              color: const Color(0xff128C7E),
                                              borderRadius:
                                                  BorderRadius.circular(8.0)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 0.5.h),
                                                child: Text(
                                                  'Full Name: ',
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xffFFFDDB),
                                                      fontFamily:
                                                          'Quicksand-SemiBold',
                                                      fontSize: 16.sp),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 1.h),
                                                child: Text(
                                                  'Username: ',
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xffFFFDDB),
                                                      fontFamily:
                                                          'Quicksand-SemiBold',
                                                      fontSize: 16.sp),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 1.h),
                                                child: Text(
                                                  'Email Address: \n',
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xffFFFDDB),
                                                      fontFamily:
                                                          'Quicksand-SemiBold',
                                                      fontSize: 16.sp),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 1.h),
                                                child: Text(
                                                  'Phone Number:\n ',
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xffFFFDDB),
                                                      fontFamily:
                                                          'Quicksand-SemiBold',
                                                      fontSize: 16.sp),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 1.h),
                                                child: Text(
                                                  'Country: ',
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xffFFFDDB),
                                                      fontFamily:
                                                          'Quicksand-SemiBold',
                                                      fontSize: 16.sp),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 1.h),
                                                child: Text(
                                                  'City:  ',
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xffFFFDDB),
                                                      fontFamily:
                                                          'Quicksand-SemiBold',
                                                      fontSize: 16.sp),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 1.h),
                                                child: Text(
                                                  'State:  ',
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xffFFFDDB),
                                                      fontFamily:
                                                          'Quicksand-SemiBold',
                                                      fontSize: 16.sp),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 1.h),
                                                child: Text(
                                                  'Pincode:  ',
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xffFFFDDB),
                                                      fontFamily:
                                                          'Quicksand-SemiBold',
                                                      fontSize: 16.sp),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 30.w,
                                              margin: EdgeInsets.only(top: 4.h),
                                              child: MaterialButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0)),
                                                onPressed: () {
                                                  c.registerPageFlow.value -= 1;
                                                },
                                                height: 8.h,
                                                color: const Color(0xff128C7E),
                                                child: Text(
                                                  'Back',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily:
                                                          'Quicksand-SemiBold',
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
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0)),
                                                onPressed: () {
                                                  print(
                                                      c.registerPageFlow.value);
                                                  // c.registerPageFlow.value += 1;
                                                },
                                                height: 8.h,
                                                color: const Color(0xff128C7E),
                                                child: Text(
                                                  'Submit',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily:
                                                          'Quicksand-Bold',
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.w),
                                          alignment: Alignment.center,
                                          child: Text(
                                            'What should we call you?',
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: const Color(0xff128C7E),
                                                fontSize: 24.sp,
                                                fontFamily:
                                                    'Quicksand-SemiBold'),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 4.h),
                                          alignment: Alignment.centerLeft,
                                          // color: Colors.blue,
                                          width: 70.w,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    bottom: 0.5.h),
                                                child: Text(
                                                  'Username',
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      color: const Color(
                                                          0xff128C7E),
                                                      fontFamily:
                                                          'Quicksand-SemiBold'),
                                                ),
                                              ),
                                              TextFormField(
                                                controller: usernameController,
                                                cursorColor:
                                                    const Color(0xffFFFCCA),
                                                style: const TextStyle(
                                                    color: Color(0xffFFFCCA)),
                                                decoration: InputDecoration(
                                                  suffixIcon: Container(
                                                    margin: EdgeInsets.only(
                                                        right: 2.w),
                                                    child: IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        FontAwesomeIcons.dice,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                8.0)),
                                                    borderSide: BorderSide(
                                                        color: const Color
                                                                .fromARGB(0,
                                                                102, 102, 102)
                                                            .withOpacity(0.2),
                                                        width: 0.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                8.0)),
                                                    borderSide: BorderSide(
                                                        color: Colors.white
                                                            .withOpacity(0.2),
                                                        width: 0.0),
                                                  ),
                                                  fillColor:
                                                      const Color(0xff128C7E),
                                                  filled: true,
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 1.h),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  '*Unique identifier for your account.\n*Won\'t show on deliveries. \n*Cannot be changed later.\n*Use \'Check\' for availability.',
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: const Color(
                                                          0xff128C7E),
                                                      fontFamily:
                                                          'Quicksand-SemiBold'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 32.w,
                                              margin: EdgeInsets.only(top: 4.h),
                                              child: MaterialButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0)),
                                                onPressed: () {},
                                                height: 8.h,
                                                color: const Color(0xff128C7E),
                                                child: Text(
                                                  'Check',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily:
                                                          'Quicksand-SemiBold',
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 5.w,
                                            ),
                                            Container(
                                              width: 32.w,
                                              margin: EdgeInsets.only(top: 4.h),
                                              child: MaterialButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0)),
                                                onPressed: () {
                                                  c.registerPageFlow.value = 2;
                                                },
                                                height: 8.h,
                                                color: const Color(0xff128C7E),
                                                child: Text(
                                                  'Next',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily:
                                                          'Quicksand-SemiBold',
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )))),
                ),
        ),
      ),
    );
  }
}
