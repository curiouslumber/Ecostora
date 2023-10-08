import 'package:ecostore/ViewModel/controller.dart';
import 'package:ecostore/ViewModel/firestoredb.dart';
import 'package:ecostore/ViewModel/signInMethods.dart';
import 'package:ecostore/Views/Home/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';
import 'package:string_validator/string_validator.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  SignInState createState() => SignInState();
}

class SignInState extends State<SignIn> {
  final c = Get.put(Controller());
  final _formKey3 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    if (c.isVisible.value || c.isVisible1.value) {
      c.isVisible.value = false;
      c.isVisible1.value = false;
    }

    return Obx(
      () => Scaffold(
        appBar: c.isLoading.value
            ? AppBar(
                backgroundColor: const Color(0xff128C7E),
                foregroundColor: const Color(0xffFFFCCA),
                leading: Container(),
              )
            : AppBar(
                backgroundColor: const Color(0xff128C7E),
                foregroundColor: const Color(0xffFFFCCA),
              ),
        body: Container(
          alignment: Alignment.center,
          color: const Color(0xffFFFDDB),
          child: SingleChildScrollView(
            child: c.isLoading.value
                ? const CircularProgressIndicator(
                    backgroundColor: Color(0xffFFFCCA),
                    color: Color(0xff128C7E),
                  )
                : Form(
                    key: _formKey3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Sign In',
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
                                'Email address',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: const Color(0xff128C7E),
                                    fontFamily: 'Quicksand-SemiBold'),
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return '* Missing Field';
                                  } else if (!isEmail(emailController.text)) {
                                    return "* Enter a valid email";
                                  }
                                  return null;
                                },
                                controller: emailController,
                                enableSuggestions: true,
                                cursorWidth: 1.8,
                                cursorColor: const Color(0xffFFFCCA),
                                style: const TextStyle(
                                    color: Color(0xffFFFCCA),
                                    fontFamily: 'Quicksand-SemiBold'),
                                decoration: InputDecoration(
                                  errorStyle: const TextStyle(
                                      color: Colors.red,
                                      fontFamily: 'Quicksand-SemiBold'),
                                  focusedErrorBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 252, 69, 69),
                                        width: 1.0),
                                  ),
                                  errorBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 252, 69, 69),
                                        width: 1.0),
                                  ),
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
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return '* Missing Field';
                                  } else {
                                    if (value.length < 6) {
                                      return '* Password should be greater than 6 characters';
                                    }
                                    {
                                      return null;
                                    }
                                  }
                                },
                                controller: passwordController,
                                obscureText: c.isVisible.value ? false : true,
                                cursorWidth: 1.8,
                                enableSuggestions: true,
                                cursorColor: const Color(0xffFFFCCA),
                                style: const TextStyle(
                                    color: Color(0xffFFFCCA),
                                    fontFamily: 'Quicksand-SemiBold'),
                                decoration: InputDecoration(
                                  errorMaxLines: 2,
                                  errorStyle: const TextStyle(
                                      color: Colors.red,
                                      fontFamily: 'Quicksand-SemiBold'),
                                  focusedErrorBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 252, 69, 69),
                                        width: 1.0),
                                  ),
                                  errorBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 252, 69, 69),
                                        width: 1.0),
                                  ),
                                  suffixIcon: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      c.isVisible.value
                                          ? c.isVisible.value = false
                                          : c.isVisible.value = true;
                                    },
                                    icon: Icon(
                                      c.isVisible.value
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: const Color(0xffFFFCCA),
                                    ),
                                  ),
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
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 1.5.w),
                                alignment: Alignment.topRight,
                                // color: Colors.blue,
                                child: MaterialButton(
                                    onPressed: () {},
                                    // color: Colors.pink,
                                    height: 3.2.h,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    padding: const EdgeInsets.all(0),
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                        fontFamily: 'Quicksand-SemiBold',
                                        fontSize: 11.sp,
                                        color: const Color(0xff128C7E),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4.h),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            onPressed: () async {
                              if (_formKey3.currentState!.validate()) {
                                await c.checkUserConnection();

                                if (c.activeConnection.value) {
                                  SignInMethods s = SignInMethods();
                                  FirestoreDB f = FirestoreDB();

                                  var emailExist = await f
                                      .doesDocumentExist(emailController.text);
                                  if (emailExist) {
                                    String? res =
                                        await s.signInWithEmailPassword(
                                            emailController.text,
                                            passwordController.text);
                                    if (res != null) {
                                      if (res == "success") {
                                        // ignore: use_build_context_synchronously
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                          backgroundColor:
                                              Color.fromARGB(255, 22, 131, 118),
                                          content: Text(
                                              "Signed In Successfully",
                                              style: TextStyle(
                                                  color: Color(0xffFFFCCA),
                                                  fontFamily:
                                                      'Quicksand-SemiBold')),
                                        ));
                                        c.fragmentIndex.value = 0;
                                        Get.offAll(() => HomePage());
                                      } else if (res.contains(
                                          "INVALID_LOGIN_CREDENTIALS")) {
                                        // ignore: use_build_context_synchronously
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                          backgroundColor:
                                              Color.fromARGB(255, 22, 131, 118),
                                          content: Text(
                                            "Incorrect Password. Please try again.",
                                            style: TextStyle(
                                                color: Color(0xffFFFCCA),
                                                fontFamily:
                                                    'Quicksand-SemiBold'),
                                          ),
                                        ));
                                      }
                                    } else {
                                      // ignore: avoid_print
                                      print(res);
                                    }
                                  } else {
                                    // ignore: use_build_context_synchronously
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      backgroundColor:
                                          Color.fromARGB(255, 22, 131, 118),
                                      content: Text(
                                        "Email is not registered",
                                        style: TextStyle(
                                            color: Color(0xffFFFCCA),
                                            fontFamily: 'Quicksand-SemiBold'),
                                      ),
                                    ));
                                  }
                                } else {
                                  // ignore: use_build_context_synchronously
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    backgroundColor:
                                        Color.fromARGB(255, 22, 131, 118),
                                    content: Text(
                                      "No Internet Connection",
                                      style: TextStyle(
                                          color: Color(0xffFFFCCA),
                                          fontFamily: 'Quicksand-SemiBold'),
                                    ),
                                  ));
                                }
                              }
                            },
                            height: 8.h,
                            color: const Color(0xff128C7E),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  color: const Color(0xffFFFCCA),
                                  fontFamily: 'Quicksand-Bold',
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

                                c.isLoading.value = true;
                                SignInMethods service = SignInMethods();
                                try {
                                  await service.signInWithGoogle();
                                  // ignore: use_build_context_synchronously
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text("Signed In Successfully"),
                                  ));
                                  c.fragmentIndex.value = 0;
                                  Get.to(() => HomePage());
                                } catch (e) {
                                  if (e is FirebaseAuthException) {
                                    showMessage(e.message!);
                                  }
                                }
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
                                    'Sign In With Google',
                                    style: TextStyle(
                                        color: const Color(0xffFFFCCA),
                                        fontFamily: 'Quicksand-SemiBold',
                                        fontSize: 12.sp),
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
        ),
      ),
    );
  }
}
