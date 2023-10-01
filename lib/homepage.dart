import 'package:ecostore/home.dart';
import 'package:ecostore/sidebar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff128C7E),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            foregroundColor: const Color(0xffFFFCCA),
            shadowColor: const Color.fromARGB(106, 18, 140, 126),
            backgroundColor: const Color(0xff128C7E),
            title: const Text(
              'Ecostara',
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
          body: const Home(),
          bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            iconSize: 24.0,
            backgroundColor: const Color(0xff128C7E),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.white), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.bookmark,
                    color: Colors.white,
                  ),
                  label: 'Favourites'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.white,
                  ),
                  label: 'Account'),
            ],
            unselectedItemColor: Colors.white,
            unselectedLabelStyle: const TextStyle(color: Colors.white),
            selectedLabelStyle: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
