import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff128C7E),
        foregroundColor: const Color(0xffFFFDDB),
      ),
      body: Container(
        alignment: Alignment.center,
        color: const Color(0xffFFFDDB),
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
                    decoration: const InputDecoration(),
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
                    decoration: const InputDecoration(),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 4.h),
              child: MaterialButton(
                onPressed: () {
                  print("Button Pressed");
                },
                height: 8.h,
                color: const Color(0xff128C7E),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
