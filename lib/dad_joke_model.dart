// To parse this JSON data, do
//
//     final dadJoke = dadJokeFromMap(jsonString);

import 'dart:convert';

DadJoke dadJokeFromMap(String str) => DadJoke.fromMap(json.decode(str));

String dadJokeToMap(DadJoke data) => json.encode(data.toMap());

class DadJoke {
  DadJoke({this.id, this.joke, this.viewed = false, this.liked});

  String? id;
  String? joke;
  bool viewed = false;
  bool? liked;

  factory DadJoke.fromMap(Map<String, dynamic> json) => DadJoke(
        id: json["id"] == null ? null : json["id"],
        joke: json["joke"] == null ? null : json["joke"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "joke": joke,
      };
}
