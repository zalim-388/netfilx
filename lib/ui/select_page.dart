import 'package:flutter/material.dart';
import 'package:netfilx/ui/bottomnav.dart';
import 'package:netfilx/ui/home.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({super.key});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  List<Map<String, String>> Movies = [
    {
      "Image": "assets/image/n2 4.png",
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
        leading: TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNav(),
                  ));
            },
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
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
          )),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                
                itemCount: Movies.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 180,
                ),
                itemBuilder: (context, index) {

                  final movie = Movies[index];

                  return Column(
                    children: [
                      SizedBox(
                        height: 120,
                        child: GestureDetector(
                          onTap: () {
                            
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(

                                    image: movie['image'] ?? '',
                                    name: movie['name'] ?? '',
                                  ),
                                ));
                          },
                          child: Image.asset(
                            movie['Image'] ?? '',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        movie['name'] ?? '',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
