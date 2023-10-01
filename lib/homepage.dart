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
          body: const Home(),
          bottomNavigationBar: BottomNavigationBar(
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
                color: Colors.white, fontFamily: 'Quicksand-Regular'),
            selectedLabelStyle: const TextStyle(
                color: Color(0xffFFFCCA), fontFamily: 'Quicksand-SemiBold'),
            selectedItemColor: const Color(0xffFFFCCA),
          ),
        ),
      ),
    );
  }
}
