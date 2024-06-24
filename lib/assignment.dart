import 'package:flutter/material.dart';

import 'home_page.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dashboard",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Updated on Sun,16th June",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.notification_add_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 10, left: 15, bottom: 10, right: 15),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 100,
              width: MediaQuery.sizeOf(context).width,
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Key tips to get ahead financially ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                  ),
                  Image.asset("assets/vlcsnap-2024-05-27-18h05m55s400.png", height: 50,),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.add,
                ),
                SizedBox(width: 10),
                Icon(Icons.filter_tilt_shift_outlined),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 10, top: 15, right: 10, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 4,
                            offset: const Offset(0, 3),
                          )
                        ]),
                    height: 150,
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 5, top: 5, right: 5, bottom: 5),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                          child: const Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white70,
                            size: 40,
                          ),
                        ),
                        const Text(
                          "Expenses",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "4,729",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        const Align(
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.arrow_forward_outlined,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, top: 15, right: 10, bottom: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 4,
                          offset: const Offset(0, 3),
                        )
                      ]),
                  height: 150,
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            left: 5, top: 5, right: 5, bottom: 5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.yellow),
                        child: const Icon(
                          Icons.house_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      const Text(
                        "Loan",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "250,000",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, top: 15, right: 10, bottom: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 4,
                          offset: const Offset(0, 3),
                        )
                      ]),
                  height: 150,
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            left: 5, top: 5, right: 5, bottom: 5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: const Icon(
                          Icons.savings_outlined,
                          color: Colors.white70,
                          size: 40,
                        ),
                      ),
                      const Text(
                        "Savings",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "39,500",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, top: 15, right: 10, bottom: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 4,
                          offset: const Offset(0, 3),
                        )
                      ]),
                  height: 150,
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            left: 5, top: 5, right: 5, bottom: 5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.greenAccent),
                        child: const Icon(
                          Icons.flood_outlined,
                          color: Colors.white70,
                          size: 40,
                        ),
                      ),
                      const Text(
                        "Investment",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "5,698",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
