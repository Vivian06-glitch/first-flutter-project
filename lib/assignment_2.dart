import 'package:flutter/material.dart';

import 'course_widget.dart';

class HomeStage extends StatefulWidget {
  const HomeStage({super.key});

  @override
  State<HomeStage> createState() => _HomeStageState();
}

class _HomeStageState extends State<HomeStage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.menu_outlined),
        title: const Text(""),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/istockphoto-185228721-170667a.webp',
                // Replace with the path to your image
                height: 20.0,
                width: 30.0,
              ),
              const SizedBox(width: 10.0),
              const Text('Spanish')
            ],
          ),
        ],
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/depositphotos_22064725-stock-photo-happy-smiling-girl.jpg",
                    height: 100,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(children: [
                    Text(
                      "Martha Stewart",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Icon(Icons.location_on_outlined),
                    Text("United Kingdom"),
                  ]),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                height: 250,
                width: 500,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.circular(8)),
                            child: const Text(
                              "intermediate",
                              selectionColor: Colors.blueAccent,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Today's Challenge",
                            style: TextStyle(fontSize: 25),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("German Meals"),
                          const SizedBox(
                            height: 10,
                          ),
                          const Icon(
                            Icons.diamond,
                            color: Colors.red,
                          ),
                          const Text(
                              "Take this lesson to earn a new milestone"),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Image.asset(
                      "assets/download.jfif",
                      height: 500,
                      width: 100,
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Your Courses",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CourseWidget(
                      title: "Spanish",
                      subTitle: "Beginner",
                      color: Colors.deepOrange,
                      icon: Icon(Icons.flag),
                      radius: 35,
                    ),
                    CourseWidget(
                      title: "English",
                      subTitle: "Advance",
                      color: Colors.blue,
                      icon: Icon(Icons.car_crash),
                    ),
                    CourseWidget(
                      title: "German",
                      subTitle: "Intermediate",
                      color: Colors.pink,
                      icon: Icon(Icons.countertops),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
