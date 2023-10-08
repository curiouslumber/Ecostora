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
                      ? Form(
                          key: _formKey,
                          child: Column(
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
                                  onPressed: () async {
                                    if (_formKey.currentState!.validate()) {
                                      // If the form is valid, display a snackbar. In the real world,
                                      // you'd often call a server or save the information in a database.
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content: Text('Processing Data')),
                                      );
                                    }

                                    // FirestoreDB f = FirestoreDB();
                                    // bool doesExist = await f
                                    //     .doesDocumentExist(emailController.text);

                                    // if (!doesExist) {
                                    //   c.registerPageFlow.value += 1;
                                    // } else {
                                    //   String? loginType = await f
                                    //       .getLoginType(emailController.text);

                                    //   // ignore: use_build_context_synchronously
                                    //   ScaffoldMessenger.of(context)
                                    //       .showSnackBar(SnackBar(
                                    //     content: Text(
                                    //         "Email Already Registered via  $loginType Sign In"),
                                    //   ));
                                    // }
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
                                    obscureText:
                                        c.isVisible.value ? false : true,
                                    enableSuggestions: true,
                                    cursorWidth: 1.8,
                                    cursorColor: const Color(0xffFFFCCA),
                                    style: const TextStyle(
                                        color: Color(0xffFFFCCA),
                                        fontFamily: 'Quicksand-SemiBold'),
                                    decoration: InputDecoration(
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
                                    obscureText:
                                        c.isVisible1.value ? false : true,
                                    cursorWidth: 1.8,
                                    enableSuggestions: true,
                                    cursorColor: const Color(0xffFFFCCA),
                                    style: const TextStyle(
                                        color: Color(0xffFFFCCA),
                                        fontFamily: 'Quicksand-SemiBold'),
                                    decoration: InputDecoration(
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
                                      if (userCredential == "success") {
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
                                        c.fragmentIndex.value = 0;
                                        Get.offAll(() => HomePage());
                                      } else if (userCredential ==
                                          "email-already-in-use") {
                                        var loginType = await f
                                            .getLoginType(emailController.text);
                                        if (loginType != null) {
                                          // ignore: use_build_context_synchronously
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                            content: Text(
                                                "Email Already in Use via $loginType Sign In"),
                                          ));
                                        }
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
