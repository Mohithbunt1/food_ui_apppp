import 'package:flutter/material.dart';
import 'package:food_ui_app/pages/searchtabbar/all.dart';
import 'package:food_ui_app/pages/searchtabbar/searchfastfood.dart';
import 'package:food_ui_app/pages/searchtabbar/searchheavyfood.dart';
import 'package:food_ui_app/pages/searchtabbar/searchplatters.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 40,
            ),
            onPressed: () {},
          ),
          title: Row(
            children: [
              const SizedBox(
                width: 100,
              ),
              const Text(
                "Food Menu",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              IconButton(
                onPressed: () {},
                icon: const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          toolbarHeight: 100,
          bottom: const TabBar(
            labelColor: Colors.orange,
            indicatorColor: Colors.orange,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                text: "All",
              ),
              Tab(
                text: "Fast Food",
              ),
              Tab(
                text: "Heavy Food",
              ),
              Tab(
                text: "Platters",
              ),
            ],
          ),
        ),
        // ignore: prefer_const_constructors
        body: TabBarView(children: const [
          Searchall(),
          Searchfastfood(),
          Searchheavyfood(),
          Searchplatters()
        ]),
      ),
    );
  }
}
