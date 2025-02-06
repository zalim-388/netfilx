import 'package:flutter/material.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({super.key});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  List<Map<String, String>> Movie = [
    {
      "Image": " assets/image/n2 4.png",
      "name": "Drashti",
    },
    {
      "Image": "assets/image/n2 5.png",
      "name": "Bhavesh",
    },
    {
      "Image": "assets/image/n3 1.png",
      "name": "Aditi",
    },
    {
      "Image": "assets/image/n2 2.png",
      "name": "Prit",
    },
    {
      "Image": "assets/image/n2 1.png",
      "name": "Kavya",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Image.asset(
            'assets/image/n1 1.png',
            height: 50,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Center(
              child: Text(
            'Who’s Watching?',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ))
        ],
      ),
    );
  }
}
