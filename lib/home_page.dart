import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.notification_add_outlined,
            color: Colors.cyan,
          ),
          SizedBox(
            width: 15,
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
        title: const Text("Vivian",
            style: TextStyle(
              fontSize: 40,
              color: Colors.amber,
              fontWeight: FontWeight.w700,
            )),

      ),
      body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Email",
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: const TextField()),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "First Name",
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: const TextField()),
            const SizedBox(
              height: 10,
            ),
            const Text(
              " Last Name",
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration:
                BoxDecoration(border: Border.all(color: Colors.black)),
                child: const TextField()),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "User Name",
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration:
                BoxDecoration(border: Border.all(color: Colors.black)),
                child: const TextField()),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Password",
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration:
                BoxDecoration(border: Border.all(color: Colors.black)),
                child:  const TextField(
                  keyboardType: TextInputType.text,
                  obscuringCharacter: "*",
                  obscureText: true,
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Confirm Password",
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration:
                BoxDecoration(border: Border.all(color: Colors.black)),
                child: const TextField(
                  keyboardType: TextInputType.text,
                  obscuringCharacter: "*",
                  obscureText: true,
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Age",
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration:
                BoxDecoration(border: Border.all(color: Colors.black)),
                child: const TextField()),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Gender",
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration:
                BoxDecoration(border: Border.all(color: Colors.black)),
                child: const TextField()),
           Center(

              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Submit"),
                style: const ButtonStyle(),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
