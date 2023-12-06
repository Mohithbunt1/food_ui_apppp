import 'package:flutter/material.dart';
import 'package:food_ui_app/pages/modules/contents.dart';

class Searchheavyfood extends StatelessWidget {
  const Searchheavyfood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.builder(
            itemCount: heavyfooditem.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              mainAxisExtent: 270,
              crossAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(
                      "${heavyfooditem.elementAt(index)['image']}",
                    ),
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            shape: MaterialStatePropertyAll(StadiumBorder())),
                        onPressed: () {},
                        child: Text(
                          "${heavyfooditem.elementAt(index)["price"]}",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 160, left: 15),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "${heavyfooditem.elementAt(index)["title"]}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 200, left: 20),
                      child: OutlinedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.orange)),
                        child: const Text(
                          "ADD",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 200, left: 180),
                      child: IconButton(
                          splashColor: Colors.red,
                          splashRadius: 10,
                          iconSize: 35,
                          color: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                          )),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
