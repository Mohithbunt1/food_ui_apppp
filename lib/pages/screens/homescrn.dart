import 'package:flutter/material.dart';
import 'package:food_ui_app/pages/NAvpages/dream.dart';
import 'package:food_ui_app/pages/NAvpages/empire.dart';
import 'package:food_ui_app/pages/NAvpages/restaurant_seeall.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String selectedValue = "Nanjappa Circle,banglore"; // Default selected value

  List<String> options = [
    "Nanjappa Circle,banglore",
    "Richmond banglore",
  ];

  List listitem = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdWqMJG1pACYyQ9h3qD7-XJaMz-Lx_atdOtwGLQBdFkM0wMN0FcLHBx1OF7GPXIbTb_Qs&usqp=CAU",
    "Royal Biriyani",
    "MG Road,banglore",
  ];

  List listitem2 = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaOr4ID3efHuYxbUGZiXf_0YsHLqdBdf5lRK2OQ3bOFbAS4-EeXoUyuvSZ6yFv0868DGo&usqp=CAU",
    "Ambur Biriyani",
    "Shanthinagar,banglore",
  ];
  List listitem3 = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ2PJDuSHqknpfWnkSqqg_BFx0wIW8cvrkmNrMI58_HNyTMu2J0ywI5NPnVJR-RUUAoBM&usqp=CAU",
    "New Bites",
    "Marathahalli,banglore",
  ];

  // [
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkIyYHqBc91kyMcMt83HdqDHa5Okz-B_6xUR718hklPE4HerC-Eio6ij3WUlrLMKkSev0&usqp=CAU",
  //   "Alia Plaza",
  //   "Shanthinagar"
  // ],
  // [
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEtIogrxgLSy5h7p59OUMxcLO4FKLK7fYJsN48CHYRYwMty5_oCYXT4JuFnLuq7TSK_NI&usqp=CAU",
  //   "Dream Hotel",
  //   "Shanthinagar,banglore"
  // ],

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            title: Column(children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  title: const Padding(
                    padding: EdgeInsets.only(top: 10, left: 95),
                    child: Text(
                      "Deliver To ",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  subtitle:
                      // DropdownButton<String>(
                      //     value: selectedindx,
                      //     items: options.map((String option) {
                      //       return DropdownMenuItem<String>(
                      //         value: option,
                      //         child: Text(option),
                      //       );
                      //     }).toList(),
                      //     onChanged: (String? newValue) {
                      //       setState(() {
                      //         selectedindx = newValue!;
                      //       });
                      //     },
                      //   ),
                      // ),
                      Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: DropdownButton<String>(
                      elevation: 0,
                      value: selectedValue,
                      items: options.map((String option) {
                        return DropdownMenuItem<String>(
                          value: option,
                          child: Text(
                            option,
                            style:
                                TextStyle(fontSize: 22, color: Colors.red[400]),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                    ),
                  ),
                  trailing: const CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz1FLcrOvTMtJBK8o7uQziwNjl25g095oWbg&usqp=CAU",
                    ),
                    radius: 30,
                  ),
                ),
              ),
            ]),
            elevation: 0,
          ),
          drawer: const Drawer(
            shadowColor: Colors.amber,
            backgroundColor: Colors.grey,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 210),
                  child: Text(
                    "Welcome Foody!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
                        ),
                        disabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
                        ),
                        fillColor: Colors.grey[200],
                        label: const Text(
                          "Find Your Food",
                        ),
                        prefixIcon:
                            const Icon(Icons.search, color: Colors.black),
                        suffixIcon: const Icon(Icons.display_settings),
                        filled: true),
                  ),
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 40),
                      child: Text(
                        "Nearby Place",
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      width: 210,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See All(12)",
                            style:
                                TextStyle(color: Colors.orange, fontSize: 18),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[300],
                    ),
                    height: 80,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(listitem[0]),
                        radius: 30,
                      ),
                      title: Text(
                        listitem[1],
                        style: const TextStyle(fontSize: 24),
                      ),
                      subtitle: Text(
                        listitem[2],
                        style: const TextStyle(fontSize: 18),
                      ),
                      trailing: const Icon(Icons.coffee_maker),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, top: 15, left: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[300],
                    ),
                    height: 80,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(listitem2[0]),
                        radius: 30,
                      ),
                      title: Text(
                        listitem2[1],
                        style: const TextStyle(fontSize: 24),
                      ),
                      subtitle: Text(
                        listitem2[2],
                        style: const TextStyle(fontSize: 18),
                      ),
                      trailing: const Icon(Icons.food_bank_outlined),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15, top: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[300],
                    ),
                    height: 80,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(listitem3[0]),
                        radius: 30,
                      ),
                      title: Text(
                        listitem3[1],
                        style: const TextStyle(fontSize: 24),
                      ),
                      subtitle: Text(
                        listitem3[2],
                        style: const TextStyle(fontSize: 18),
                      ),
                      trailing: const Icon(Icons.food_bank_outlined),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 150, left: 20),
                      child: Text(
                        "Popular Restaurants",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const Seeallrest();
                                },
                              ),
                            );
                          },
                          child: const Text(
                            "See All(12)",
                            style:
                                TextStyle(color: Colors.orange, fontSize: 18),
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
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
                                          return const Dream();
                                        },
                                      ),
                                    );
                                  },
                                  child: Image.network(
                                    listitem[0],
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
                              ],
                            ),
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
                                      listitem3[0],
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
                                    padding:
                                        EdgeInsets.only(top: 7, right: 175),
                                    child: Text(
                                      "320 Recipies",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
