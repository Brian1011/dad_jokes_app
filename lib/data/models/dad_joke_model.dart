// To parse this JSON data, do
//
//     final dadJoke = dadJokeFromMap(jsonString);

import 'dart:convert';

import 'package:hive/hive.dart';

part '../adapters/dad_joke_model.g.dart';

DadJoke dadJokeFromMap(String str) => DadJoke.fromMap(json.decode(str));

String dadJokeToMap(DadJoke data) => json.encode(data.toMap());

@HiveType(typeId: 1)
class DadJoke {
  DadJoke({this.id, this.jokeId, this.joke, this.viewed = false, this.liked});

  @HiveField(0)
  int? id;
  @HiveField(1)
  String? jokeId;
  @HiveField(2)
  String? joke;
  @HiveField(3)
  bool viewed = false;
  @HiveField(4)
  bool? liked;

  factory DadJoke.fromMap(Map<String, dynamic> json) => DadJoke(
        jokeId: json["id"] == null ? null : json["id"],
        joke: json["joke"] == null ? null : json["joke"],
      );

  Map<String, dynamic> toMap() => {
        "id": jokeId,
        "joke": joke,
      };
}

// store in hive
// pagination
// last viewed id
// internet connection
