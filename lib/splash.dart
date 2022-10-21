import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Duration duration = const Duration(milliseconds: 4000);
    Timer(duration, () {
      Navigator.of(context).pushReplacementNamed('home');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color(0xff101438),
        child: Column(
// mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            ClipOval(
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWN0vKGCuP_Dq9C9ykoOra1xLCNkw2i189PQ&usqp=CAU"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "BMI CALCULATOR",
                style: const TextStyle(fontSize: 28, color: Colors.white),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.35),
            Transform.scale(
              scale: 1.25,
              child: const CircularProgressIndicator(
                color: Colors.pink,
                strokeWidth: 4,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: const Text(
                "Check your BMI",
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
