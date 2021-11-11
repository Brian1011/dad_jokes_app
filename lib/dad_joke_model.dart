// To parse this JSON data, do
//
//     final dadJoke = dadJokeFromMap(jsonString);

import 'dart:convert';

DadJoke dadJokeFromMap(String str) => DadJoke.fromMap(json.decode(str));

String dadJokeToMap(DadJoke data) => json.encode(data.toMap());

class DadJoke {
  DadJoke({
    this.id,
    this.joke,
  });

  String? id;
  String? joke;

  factory DadJoke.fromMap(Map<String, dynamic> json) => DadJoke(
        id: json["id"] == null ? null : json["id"],
        joke: json["joke"] == null ? null : json["joke"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "joke": joke,
      };
}
