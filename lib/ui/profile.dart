import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  

  final String name;
  final String image;

  const Profile({super.key, required this.name, required this.image, });

  @override
  State<Profile> createState() => _ProfileState();
}


class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {

        Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 25,
            ),
          ),
          title: Text(
            'Profiles & More',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        
        body: Column(children: [


        ],),
        
        
        );
  }
}
