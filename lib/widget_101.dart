import 'package:flutter/material.dart';

class Widget101 extends StatefulWidget {
  const Widget101({super.key});

  @override
  State<Widget101> createState() => _Widget101State();
}

class _Widget101State extends State<Widget101> {
  Future<String> getData() async {
    await Future.delayed(const Duration(seconds: 1));
    //throw"Error";
    return "Super!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator(color: Colors.blue,);
              }
              if (snapshot.hasError) {
                return Text(
                    snapshot.error.toString());
              } else {
                return  Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(snapshot.data.toString()
                    ),
                    ElevatedButton(onPressed: (){
                      setState(() {});
                      },
                        child: const Text("Refresh")
                    )
                  ],
                );
              }
            }),
      ),
    );
  }
}
