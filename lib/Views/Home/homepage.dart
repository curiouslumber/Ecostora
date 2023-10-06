import 'package:ecostore/ViewModel/controller.dart';
import 'package:ecostore/Views/Account/account.dart';
import 'package:ecostore/Views/Cart/cart.dart';
import 'package:ecostore/Views/Favourites/favourites.dart';
import 'package:ecostore/Views/Home/home.dart';
import 'package:ecostore/Views/Home/sidebar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final pages = [Home(), const Favourite(), const Cart(), Account()];
  final c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');

        c.isAccount.value = false;
        c.signedIn.value = false;
      } else {
        print('User is signed in!');
        c.isAccount.value = true;
        c.signedIn.value = true;
      }
    });

    return Container(
      color: const Color(0xff128C7E),
      child: SafeArea(
        child: Obx(
          () => Scaffold(
            appBar: AppBar(
              foregroundColor: const Color(0xffFFFCCA),
              shadowColor: const Color.fromARGB(0, 18, 140, 126),
              elevation: 16.0,
              backgroundColor: const Color(0xff128C7E),
              title: const Text(
                'Ecostora',
                style: TextStyle(fontFamily: 'Quicksand-SemiBold'),
              ),
              actions: [
                Container(
                    margin: const EdgeInsets.only(right: 16.0),
                    child: const Icon(Icons.store))
              ],
              centerTitle: true,
            ),
            drawer: const Sidebar(),
            body: pages[c.fragmentIndex.value],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: c.fragmentIndex.value,
              onTap: (value) {
                c.fragmentIndex.value = value;
              },
              elevation: 16.0,
              type: BottomNavigationBarType.fixed,
              iconSize: 24.0,
              backgroundColor: const Color(0xff128C7E),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.bookmark,
                    ),
                    label: 'Favourites'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shopping_cart,
                    ),
                    label: 'Cart'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_circle_rounded,
                    ),
                    label: 'Account'),
              ],
              unselectedItemColor: Colors.white,
              unselectedLabelStyle: const TextStyle(
                  color: Colors.white, fontFamily: 'Quicksand-Medium'),
              selectedLabelStyle: const TextStyle(
                  color: Color(0xffFFFCCA), fontFamily: 'Quicksand-SemiBold'),
              selectedItemColor: const Color(0xffFFFCCA),
            ),
          ),
        ),
      ),
    );
  }
}
