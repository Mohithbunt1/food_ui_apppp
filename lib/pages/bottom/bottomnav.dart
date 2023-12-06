import 'package:flutter/material.dart';
import 'package:food_ui_app/pages/screens/account.dart';
import 'package:food_ui_app/pages/screens/order.dart';

import 'package:food_ui_app/pages/screens/homescrn.dart';
import 'package:food_ui_app/pages/screens/search.dart';
import 'package:food_ui_app/pages/screens/shop.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int selectedindex = 0;
  final List pages = [
    const Homepage(),
    const Search(),
    const Shopping(),
    const Order(),
    const Accountt(),
  ];
  void ontapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.orange,
        selectedFontSize: 20,
        unselectedItemColor: Colors.black,
        iconSize: 30,
        currentIndex: selectedindex,
        onTap: ontapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "Search"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 30,
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.note_outlined), label: "Order"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: "Account"),
        ],
      ),
      body: pages[selectedindex],
    );
  }
}
