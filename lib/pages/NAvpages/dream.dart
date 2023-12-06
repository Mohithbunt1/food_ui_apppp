import 'package:flutter/material.dart';

class Dream extends StatelessWidget {
  const Dream({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 100,
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Padding(
              padding: EdgeInsets.only(left: 70),
              child: Text(
                "W E L C O M E ",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "T  O",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            " D R E A M  H O T E L",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Image.network(
            fit: BoxFit.fill,
            width: 400,
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdWqMJG1pACYyQ9h3qD7-XJaMz-Lx_atdOtwGLQBdFkM0wMN0FcLHBx1OF7GPXIbTb_Qs&usqp=CAU",
          ),
        ]),
      ),
    );
  }
}
