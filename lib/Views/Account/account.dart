import 'package:ecostore/ViewModel/controller.dart';
import 'package:ecostore/ViewModel/signInMethods.dart';
import 'package:ecostore/Views/Account/register.dart';
import 'package:ecostore/Views/Account/signin.dart';
import 'package:ecostore/Views/Home/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Account extends StatelessWidget {
  Account({super.key});

  final c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        color: const Color(0xffFFFDDB),
        alignment: Alignment.center,
        child: c.isLoading.value
            ? const CircularProgressIndicator(
                backgroundColor: Color(0xffFFFCCA),
                color: Color(0xff128C7E),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 25.h,
                    width: 100.w,
                    color: const Color(0xff128C7E),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 15.h,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                        ),
                        Obx(
                          () => Container(
                            margin: c.isAccount.value
                                ? EdgeInsets.only(top: 1.h)
                                : EdgeInsets.only(top: 2.h),
                            child: Text(
                              c.isAccount.value
                                  ? 'Noel Pinto'
                                  : 'Not logged in',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Quicksand-SemiBold',
                                  fontSize: 18.sp),
                            ),
                          ),
                        ),
                        Obx(
                          () => c.isAccount.value
                              ? Container(
                                  margin: EdgeInsets.only(top: 0.3.h),
                                  child: Text(
                                    'noelpinto47@gmail.com',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Quicksand-SemiBold',
                                        fontSize: 10.sp),
                                  ),
                                )
                              : Container(),
                        ),
                      ],
                    ),
                  ),
                  Obx(
                    () => Container(
                      // color: Colors.orange,
                      height: 50.h,
                      alignment: Alignment.topLeft,
                      child: c.isAccount.value
                          ? Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 0.3.h),
                                  width: 100.w,
                                  height: 8.2.h,
                                  // color: Colors.green,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.my_library_books,
                                        color: Color(0xff128C7E),
                                        size: 30,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5.w),
                                        child: Text(
                                          'My Orders',
                                          style: TextStyle(
                                              fontFamily: 'Quicksand-SemiBold',
                                              color: const Color(0xff128C7E),
                                              fontSize: 16.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // margin: EdgeInsets.only(top: 1.h),
                                  width: 100.w,
                                  height: 8.2.h,
                                  // color: Colors.green,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.add_location_alt_rounded,
                                          color: Color(0xff128C7E),
                                          size: 30,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 5.w),
                                          child: Text(
                                            'Addresses',
                                            style: TextStyle(
                                                fontFamily:
                                                    'Quicksand-SemiBold',
                                                color: const Color(0xff128C7E),
                                                fontSize: 16.sp),
                                          ),
                                        )
                                      ]),
                                ),
                                Container(
                                  // margin: EdgeInsets.only(top: 1.h),
                                  width: 100.w,
                                  height: 8.2.h,
                                  // color: Colors.green,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.notifications,
                                          color: Color(0xff128C7E),
                                          size: 30,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 5.w),
                                          child: Text(
                                            'Notifications',
                                            style: TextStyle(
                                                fontFamily:
                                                    'Quicksand-SemiBold',
                                                color: const Color(0xff128C7E),
                                                fontSize: 16.sp),
                                          ),
                                        )
                                      ]),
                                ),
                                Container(
                                  // margin: EdgeInsets.only(top: 1.h),
                                  width: 100.w,
                                  height: 8.2.h,
                                  // color: Colors.green,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.manage_accounts_rounded,
                                        color: Color(0xff128C7E),
                                        size: 30,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5.w),
                                        child: Text(
                                          'Profile',
                                          style: TextStyle(
                                              fontFamily: 'Quicksand-SemiBold',
                                              color: const Color(0xff128C7E),
                                              fontSize: 16.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // margin: EdgeInsets.only(top: 1.h),
                                  width: 100.w,
                                  height: 8.2.h,
                                  // color: Colors.green,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.settings,
                                        color: Color(0xff128C7E),
                                        size: 30,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5.w),
                                        child: Text(
                                          'Settings',
                                          style: TextStyle(
                                              fontFamily: 'Quicksand-SemiBold',
                                              color: const Color(0xff128C7E),
                                              fontSize: 16.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // margin: EdgeInsets.only(top: 1.h),
                                  width: 100.w,
                                  height: 8.2.h,
                                  // color: Colors.green,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  child: MaterialButton(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    padding: const EdgeInsets.all(0),
                                    onPressed: () async {
                                      c.isLoading.value = true;
                                      SignInMethods service = SignInMethods();
                                      try {
                                        await service.signOutFromGoogle();
                                        Get.offAll(() => HomePage(),
                                            duration: Duration.zero);
                                      } catch (e) {
                                        if (e is FirebaseAuthException) {}
                                      }
                                      c.isLoading.value = false;
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.logout_outlined,
                                          color: Color(0xff128C7E),
                                          size: 30,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 5.w),
                                          child: Text(
                                            'Log out',
                                            style: TextStyle(
                                                fontFamily:
                                                    'Quicksand-SemiBold',
                                                color: const Color(0xff128C7E),
                                                fontSize: 16.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    Get.to(() => SignIn());
                                  },
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  padding: const EdgeInsets.all(0),
                                  child: Container(
                                    // margin: EdgeInsets.only(top: 1.h),
                                    width: 100.w,
                                    height: 9.h,
                                    // color: Colors.green,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.login,
                                          color: Color(0xff128C7E),
                                          size: 30,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 5.w),
                                          child: Text(
                                            'Sign In',
                                            style: TextStyle(
                                                fontFamily:
                                                    'Quicksand-SemiBold',
                                                color: const Color(0xff128C7E),
                                                fontSize: 16.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  // margin: EdgeInsets.only(top: 1.h),
                                  width: 100.w,
                                  height: 9.h,
                                  // color: Colors.green,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  child: MaterialButton(
                                    onPressed: () {
                                      if (c.registerPageFlow.value != 0) {
                                        c.registerPageFlow.value = 0;
                                      }
                                      Get.to(() => Register());
                                    },
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    padding: const EdgeInsets.all(0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.add_circle_outlined,
                                          color: Color(0xff128C7E),
                                          size: 30,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 5.w),
                                          child: Text(
                                            'Register',
                                            style: TextStyle(
                                                fontFamily:
                                                    'Quicksand-SemiBold',
                                                color: const Color(0xff128C7E),
                                                fontSize: 16.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  // margin: EdgeInsets.only(top: 1.h),
                                  width: 100.w,
                                  height: 9.h,
                                  // color: Colors.green,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.settings,
                                        color: Color(0xff128C7E),
                                        size: 30,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5.w),
                                        child: Text(
                                          'Settings',
                                          style: TextStyle(
                                              fontFamily: 'Quicksand-SemiBold',
                                              color: const Color(0xff128C7E),
                                              fontSize: 16.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
