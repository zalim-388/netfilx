import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netfilx/ui/signin.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 320),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.grey,
                    size: 22,
                  )),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                'Ready to watch?',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
              ),
            )),
            SizedBox(
              height: 5.h,
            ),
            Text(
              'Enter your email to create or sign in to \n                     your account.',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green, ),
                ),
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.grey, fontSize: 17),
                hintText: 'Enter your email',
                hintStyle: TextStyle(color: Colors.grey.shade400),
                 contentPadding: EdgeInsets.only(
                  left: 30,
                  bottom: 35,
                  top: 30,
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signin(),
                    ));
              },
              child: Container(
                height: 50.h,
                width: 350.w,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.center,
                child: Text(
                  "GET STARTED",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
