import 'package:flutter/material.dart';

class Empire extends StatelessWidget {
  const Empire({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 100,
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text(
                "W E L C O M E ",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "T  O",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            " E M P I R E",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Image.network(
            fit: BoxFit.fill,
            width: 400,
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ2PJDuSHqknpfWnkSqqg_BFx0wIW8cvrkmNrMI58_HNyTMu2J0ywI5NPnVJR-RUUAoBM&usqp=CAU",
          ),
        ]),
      ),
    );
  }
}
