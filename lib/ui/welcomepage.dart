import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netfilx/ui/login.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: 592.h,
              width: 360.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/image/Rectangle 64.png',
                      ),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              top: 470,
              child: Container(
                height: 250.h,
                width: 180.w,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    offset: Offset(10.0, 10.0),
                    color: Colors.black.withOpacity(0.6),
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                  ),
                ]),
              ),
            ),
            Positioned(
              left: 140,
              top: 565,
              child: Text(
                '  Unlimited \nentertainment,\none low price.',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
            )
          ]),
          Container(
            height: 208.h,
            width: 450.w,
            decoration: BoxDecoration(color: Colors.black),
            child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Text(
                      'All of Netflix, starting at just \n                     ₹149.',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: 70.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                      },
                      child: Container(
                        height: 60.h,
                        width: 450.w,
                        decoration: BoxDecoration(color: Colors.red),
                        alignment: Alignment.center,
                        child: Text(
                          "GET STARTED",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
