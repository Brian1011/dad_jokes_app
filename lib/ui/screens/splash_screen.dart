import 'dart:async';

import 'package:dad_jokes/services/jokes_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHomePage();
  }

  navigateToHomePage() async {
    await jokesService.loadJokes().then((response) async {
      await Future.delayed(const Duration(seconds: 3), () => print("1232"));
    }).catchError((error) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            children: [
              Text(
                "Dad jokes",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              StreamBuilder<Object>(
                  stream: null,
                  builder: (context, snapshot) {
                    return SpinKitThreeInOut(
                      color: Colors.white,
                      size: 50,
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
