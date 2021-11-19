import 'package:dad_jokes/data/models/dad_joke_model.dart';
import 'package:dad_jokes/services/jokes_service.dart';
import 'package:flutter/material.dart';

class LikedJokesScreen extends StatefulWidget {
  const LikedJokesScreen({Key? key}) : super(key: key);

  @override
  _LikedJokesScreenState createState() => _LikedJokesScreenState();
}

class _LikedJokesScreenState extends State<LikedJokesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.grey[800],
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: jokesService.dadJokes.length,
                    itemBuilder: (context, index){
                      DadJoke joke =
                      return
                    }
                )
            )
          ],
        ),
      ),
    ));
  }
}
