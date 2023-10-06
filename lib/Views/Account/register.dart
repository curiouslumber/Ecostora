import 'package:ecostore/ViewModel/controller.dart';
import 'package:ecostore/ViewModel/firestoredb.dart';
import 'package:ecostore/ViewModel/signInMethods.dart';
import 'package:ecostore/Views/Home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Register extends StatelessWidget {
  Register({super.key});

  final c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    TextEditingController fullnameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    return Obx(
      () => Scaffold(
        appBar: AppBar(
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
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Create Password',
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
                                      'New Password',
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
                                    onPressed: () async {
                                      // print(fullnameController.text);
                                      FirestoreDB f = FirestoreDB();
                                      SignInMethods m = SignInMethods();

                                      var userCredential =
                                          await m.registerWithEmailAndPassword(
                                              emailController.text,
                                              passwordController.text);
                                      if (userCredential != null) {
                                        f.addCustomNamedDocument(
                                            "null",
                                            fullnameController.text,
                                            emailController.text,
                                            'User');
                                        // ignore: use_build_context_synchronously
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                          content:
                                              Text("Registered Successfully"),
                                        ));

                                        Get.to(() => HomePage());
                                      } else {
                                        // Sign-in failed, show error message.
                                      }
                                    },
                                    height: 8.h,
                                    color: const Color(0xff128C7E),
                                    child: Text(
                                      'Submit',
                                      style: TextStyle(
                                          color: const Color(0xffFFFDDB),
                                          fontFamily: 'Quicksand-Bold',
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
    );
  }
}
