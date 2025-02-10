import 'package:flutter/material.dart';
import 'package:hidable/hidable.dart';
import 'package:netfilx/ui/home.dart';
import 'package:netfilx/ui/profile.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final colorsPath = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];

  int index = 0;
  final ScrollController scrollController = ScrollController();

  final List<Widget> pages = [
    Home(image: '', name: '',),
     Center(child: Text("Profile", style: TextStyle(fontSize: 20))),
    Center(child: Text("Profile", style: TextStyle(fontSize: 20))),
    Center(child: Text("Settings", style: TextStyle(fontSize: 20))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],

      bottomNavigationBar: Hidable(
        controller: scrollController,
        enableOpacityAnimation: true,
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: (i) => setState(() => index = i),
          items: bottomBarItems(),
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> bottomBarItems() {
    return [
      BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(Icons.home, color: Colors.white),
        backgroundColor: colorsPath[0].withOpacity(.6),
      ),
      BottomNavigationBarItem(
        label: 'New & Hot',
        icon: Icon(Icons.play_circle_outlined, color: Colors.white),
        backgroundColor: colorsPath[1].withOpacity(.6),
      ),
      BottomNavigationBarItem(
        label: 'search',
        icon: Icon(Icons.search, color: Colors.white),
        backgroundColor: colorsPath[2].withOpacity(.6),
      ),
      BottomNavigationBarItem(
        label: 'download',
        icon: Icon(Icons.download_rounded, color: Colors.white),
        backgroundColor: colorsPath[3].withOpacity(.6),
      ),
    ];
  }
}
