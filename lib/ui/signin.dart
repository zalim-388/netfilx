import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netfilx/ui/select_page.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
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
            )),
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Image.asset(
            'assets/image/n1 1.png',
            height: 50,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              TextField(
                decoration: InputDecoration(
                  // labelText: 'Email or phone number',
                  labelStyle: TextStyle(color: Colors.white, fontSize: 19),
                  hintText: 'Enter your email or phone number',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.grey,
                  filled: true,
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.only(
                    left: 20,
                    bottom: 35,
                    top: 30,
                  ),
                ),
                cursorColor: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  // labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white, fontSize: 19),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.grey,
                  filled: true,
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.only(
                    left: 30,
                    bottom: 35,
                    top: 30,
                  ),
                ),
                cursorColor: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectPage(),
                      ));
                },
                child: Container(
                  height: 50.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Need help ?',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Row(
                  children: [
                    Text(
                      'New to Netflix ?',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign up now. ',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                '    Sign in is protected by Google\nreCAPTCHA to ensure you’re not a bot.\n                      Learn more.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
      ),
    );
  }
}
