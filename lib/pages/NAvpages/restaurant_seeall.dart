import 'package:flutter/material.dart';
import 'package:food_ui_app/pages/NAvpages/dream.dart';
import 'package:food_ui_app/pages/NAvpages/empire.dart';

class Seeallrest extends StatelessWidget {
  const Seeallrest({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
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
                "T O ",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "F O O D Y ! ",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Dream();
                      },
                    ),
                  );
                },
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdWqMJG1pACYyQ9h3qD7-XJaMz-Lx_atdOtwGLQBdFkM0wMN0FcLHBx1OF7GPXIbTb_Qs&usqp=CAU",
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 180),
                child: Text(
                  "Dream Hotel",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 7, right: 195),
                child: Text(
                  "124 Recipies",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const Empire();
                              },
                            ),
                          );
                        },
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ2PJDuSHqknpfWnkSqqg_BFx0wIW8cvrkmNrMI58_HNyTMu2J0ywI5NPnVJR-RUUAoBM&usqp=CAU",
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 210),
                        child: Text(
                          "Empire",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 7, right: 175),
                        child: Text(
                          "320 Recipies",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
