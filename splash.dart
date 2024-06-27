import 'dart:async';

import 'package:counter/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer.periodic(
      Duration(seconds: 2),
      (timer) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ));
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: Image.network(
                height: 120,
                width: 160,
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/WhatsApp_icon.png/598px-WhatsApp_icon.png'),
          ),
          SizedBox(
            height: 40,
          ),
          CircularProgressIndicator(
            color: Colors.green,
          ),
          Spacer(),
          Container(
            child: Text(
              "From",
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "Meta",
                style: TextStyle(fontSize: 28, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
