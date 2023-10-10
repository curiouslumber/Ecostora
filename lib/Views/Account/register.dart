import 'package:ecostore/ViewModel/controller.dart';
import 'package:ecostore/ViewModel/firestoredb.dart';
import 'package:ecostore/ViewModel/signInMethods.dart';
import 'package:ecostore/Views/Home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:string_validator/string_validator.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  final c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    TextEditingController fullnameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    if (c.isVisible.value || c.isVisible1.value) {
      c.isVisible.value = false;
      c.isVisible1.value = false;
    }

    return Obx(
      () => Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff028a0f),
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
                      ? Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Register',
                                style: TextStyle(
                                    color: const Color(0xff028a0f),
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
                                            color: const Color(0xff028a0f),
                                            fontFamily: 'Quicksand-SemiBold'),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: fullnameController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return '* Missing Field';
                                        }
                                        return null;
                                      },
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
                                        focusedErrorBorder:
                                            const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 252, 69, 69),
                                              width: 1.0),
                                        ),
                                        errorBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 252, 69, 69),
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
                                              color:
                                                  Colors.white.withOpacity(0.2),
                                              width: 0.0),
                                        ),
                                        fillColor: const Color(0xff028a0f),
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
                                            color: const Color(0xff028a0f),
                                            fontFamily: 'Quicksand-SemiBold'),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: emailController,
                                      enableSuggestions: true,
                                      cursorWidth: 1.8,
                                      cursorColor: const Color(0xffFFFCCA),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return '* Missing Field';
                                        } else if (!isEmail(
                                            emailController.text)) {
                                          return "* Enter a valid email";
                                        }
                                        return null;
                                      },
                                      style: const TextStyle(
                                          color: Color(0xffFFFCCA),
                                          fontFamily: 'Quicksand-SemiBold'),
                                      decoration: InputDecoration(
                                        errorStyle: const TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'Quicksand-SemiBold'),
                                        focusedErrorBorder:
                                            const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 252, 69, 69),
                                              width: 1.0),
                                        ),
                                        errorBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 252, 69, 69),
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
                                              color:
                                                  Colors.white.withOpacity(0.2),
                                              width: 0.0),
                                        ),
                                        fillColor: const Color(0xff028a0f),
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
                                  onPressed: () async {
                                    if (_formKey.currentState!.validate()) {
                                      FirestoreDB f = FirestoreDB();
                                      bool doesExist =
                                          await f.doesDocumentExist(
                                              emailController.text);

                                      if (!doesExist) {
                                        c.registerPageFlow.value += 1;
                                      } else {
                                        String? loginType = await f
                                            .getLoginType(emailController.text);

                                        // ignore: use_build_context_synchronously
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          backgroundColor: const Color.fromARGB(
                                              255, 22, 131, 118),
                                          content: Text(
                                            "Email Already Registered via  $loginType Sign In",
                                            style: const TextStyle(
                                                color: Color(0xffFFFCCA),
                                                fontFamily:
                                                    'Quicksand-SemiBold'),
                                          ),
                                        ));
                                      }
                                    }
                                  },
                                  height: 8.h,
                                  color: const Color(0xff028a0f),
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
                        )
                      : Form(
                          key: _formKey1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Create Password',
                                style: TextStyle(
                                    color: const Color(0xff028a0f),
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
                                            color: const Color(0xff028a0f),
                                            fontFamily: 'Quicksand-SemiBold'),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: passwordController,
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
                                      obscureText:
                                          c.isVisible.value ? false : true,
                                      enableSuggestions: true,
                                      cursorWidth: 1.8,
                                      cursorColor: const Color(0xffFFFCCA),
                                      style: const TextStyle(
                                          color: Color(0xffFFFCCA),
                                          fontFamily: 'Quicksand-SemiBold'),
                                      decoration: InputDecoration(
                                        errorMaxLines: 2,
                                        errorStyle: const TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'Quicksand-SemiBold'),
                                        focusedErrorBorder:
                                            const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 252, 69, 69),
                                              width: 1.0),
                                        ),
                                        errorBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 252, 69, 69),
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
                                              color:
                                                  Colors.white.withOpacity(0.2),
                                              width: 0.0),
                                        ),
                                        fillColor: const Color(0xff028a0f),
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
                                            color: const Color(0xff028a0f),
                                            fontFamily: 'Quicksand-SemiBold'),
                                      ),
                                    ),
                                    TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return '* Missing Field';
                                        } else {
                                          if (passwordController.text.compareTo(
                                                  confirmPasswordController
                                                      .text) ==
                                              0) {
                                            return null;
                                          } else {
                                            return '* Passwords do not match';
                                          }
                                        }
                                      },
                                      controller: confirmPasswordController,
                                      obscureText:
                                          c.isVisible1.value ? false : true,
                                      cursorWidth: 1.8,
                                      enableSuggestions: true,
                                      cursorColor: const Color(0xffFFFCCA),
                                      style: const TextStyle(
                                          color: Color(0xffFFFCCA),
                                          fontFamily: 'Quicksand-SemiBold'),
                                      decoration: InputDecoration(
                                        errorStyle: const TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'Quicksand-SemiBold'),
                                        suffixIcon: IconButton(
                                          padding: EdgeInsets.zero,
                                          onPressed: () {
                                            c.isVisible1.value
                                                ? c.isVisible1.value = false
                                                : c.isVisible1.value = true;
                                          },
                                          icon: Icon(
                                            c.isVisible1.value
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: const Color(0xffFFFCCA),
                                          ),
                                        ),
                                        focusedErrorBorder:
                                            const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 252, 69, 69),
                                              width: 1.0),
                                        ),
                                        errorBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 252, 69, 69),
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
                                              color:
                                                  Colors.white.withOpacity(0.2),
                                              width: 0.0),
                                        ),
                                        fillColor: const Color(0xff028a0f),
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
                                      color: const Color(0xff028a0f),
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
                                        if (_formKey1.currentState!
                                            .validate()) {
                                          await c.checkUserConnection();

                                          if (c.activeConnection.value) {
                                            FirestoreDB f = FirestoreDB();
                                            SignInMethods m = SignInMethods();

                                            var userCredential = await m
                                                .registerWithEmailAndPassword(
                                                    emailController.text,
                                                    passwordController.text);
                                            if (userCredential == "success") {
                                              f.addCustomNamedDocument(
                                                  "null",
                                                  fullnameController.text,
                                                  emailController.text,
                                                  'User');
                                              // ignore: use_build_context_synchronously
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(const SnackBar(
                                                backgroundColor: Color.fromARGB(
                                                    255, 22, 131, 118),
                                                content: Text(
                                                  "Registered Successfully",
                                                  style: TextStyle(
                                                      color: Color(0xffFFFCCA),
                                                      fontFamily:
                                                          'Quicksand-SemiBold'),
                                                ),
                                              ));
                                              c.fragmentIndex.value = 0;
                                              Get.offAll(() => HomePage());
                                            } else if (userCredential ==
                                                "email-already-in-use") {
                                              var loginType =
                                                  await f.getLoginType(
                                                      emailController.text);
                                              if (loginType != null) {
                                                // ignore: use_build_context_synchronously
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 22, 131, 118),
                                                  content: Text(
                                                    "Email Already in Use via $loginType Sign In",
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xffFFFCCA),
                                                        fontFamily:
                                                            'Quicksand-SemiBold'),
                                                  ),
                                                ));
                                              }
                                            }
                                          } else {
                                            // ignore: use_build_context_synchronously
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(const SnackBar(
                                              backgroundColor: Color.fromARGB(
                                                  255, 22, 131, 118),
                                              content: Text(
                                                "No Internet Connection",
                                                style: TextStyle(
                                                    color: Color(0xffFFFCCA),
                                                    fontFamily:
                                                        'Quicksand-SemiBold'),
                                              ),
                                            ));
                                          }
                                        }
                                      },
                                      height: 8.h,
                                      color: const Color(0xff028a0f),
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
                          ),
                        )),
        ),
      ),
    );
  }
}
