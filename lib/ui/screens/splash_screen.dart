import 'package:another_flushbar/flushbar.dart';
import 'package:dad_jokes/data/database.dart';
import 'package:dad_jokes/services/jokes_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../../routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHomePage();
    runSetup();
  }

  runSetup() async {
    await db.init();
  }

  navigateToHomePage() async {
    await jokesService.loadJokes().then((response) async {
      //await Future.delayed(const Duration(seconds: 3), () => print("1232"));
      await Navigator.of(context).pushNamed(RouteConfig.home);
    }).catchError((error) {
      Flushbar(
        title: "Error",
        titleColor: Colors.white,
        messageColor: Colors.black,
        message: "An error has occured",
        flushbarPosition: FlushbarPosition.BOTTOM,
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green,
      )..show(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Selector<JokesService, bool>(
              selector: (context, jokesService) => jokesService.loadingJokes,
              builder: (context, loading, _) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dad jokes",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    loading
                        ? SpinKitThreeInOut(
                            color: Colors.white,
                            size: 50,
                          )
                        : Container()
                  ],
                );
              }),
        ),
      ),
    );
  }
}
