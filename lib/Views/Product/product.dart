import 'package:ecostore/ViewModel/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  final c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(color: Color(0xffFFFDDB)),
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: const Color(0xff028a0f),
        ),
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100.w,
              height: 30.h,
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8.0),
                      topLeft: Radius.circular(8.0))),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(8.0),
                        topLeft: Radius.circular(8.0)),
                    child: Image.asset(
                      'images/Categories/apples.jpg',
                      width: 100.w,
                      height: 30.h,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4.0)),
                    margin: const EdgeInsets.only(top: 6.0, left: 6.0),
                    child: GestureDetector(
                      onTap: () {
                        c.pageIndex.value -= 1;
                      },
                      child: Icon(
                        Icons.arrow_back_outlined,
                        size: 6.5.w,
                        color: const Color(0xff028a0f),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0, left: 8.0),
              child: Text(
                'Apples',
                style: TextStyle(
                    fontFamily: 'Quicksand-Regular',
                    color: Colors.white,
                    fontSize: 18.sp),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0, left: 8.0),
              child: Text(
                '\$2.99 per lb',
                style: TextStyle(
                    fontFamily: 'Quicksand-Medium',
                    color: Colors.white,
                    fontSize: 14.sp),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: Text(
                'Fresh, crisp, and pesticide-free apples sourced from local organic farms.',
                style: TextStyle(
                    fontFamily: 'Quicksand-Regular',
                    color: Colors.white,
                    fontSize: 12.sp),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Colors.white,
                    ),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0),
                    height: 8.h,
                    child: const Text(
                      'Add to favourites',
                      style: TextStyle(
                        fontFamily: 'Quicksand-SemiBold',
                        color: Color(0xff028a0f),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Move to Cart',
                      style: TextStyle(
                        fontFamily: 'Quicksand-SemiBold',
                        color: Color(0xff028a0f),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Colors.white,
                    ),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0),
                    height: 8.h,
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              width: 100.w,
              height: 8.h,
              margin:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0)),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Buy Now',
                      style: TextStyle(
                        fontFamily: 'Quicksand-SemiBold',
                        color: Color(0xff028a0f),
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
