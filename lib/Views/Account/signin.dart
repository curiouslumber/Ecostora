import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
        child: SingleChildScrollView(
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
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(0, 102, 102, 102)
                                  .withOpacity(0.2),
                              width: 0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                              color: Colors.white.withOpacity(0.2), width: 0.0),
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(0, 102, 102, 102)
                                  .withOpacity(0.2),
                              width: 0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                              color: Colors.white.withOpacity(0.2), width: 0.0),
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
                    print("Button Pressed");
                  },
                  height: 8.h,
                  color: const Color(0xff128C7E),
                  child: Text(
                    'Submit',
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
                    margin:
                        EdgeInsets.symmetric(vertical: 3.h, horizontal: 4.w),
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
                    margin:
                        EdgeInsets.symmetric(vertical: 3.h, horizontal: 4.w),
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
                        color: Colors.white,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2.w),
                        child: Text(
                          'Sign In With Google',
                          style: TextStyle(
                              color: Colors.white,
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
    );
  }
}
