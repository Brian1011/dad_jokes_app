import 'package:dad_jokes/api/api.dart';
import 'package:dad_jokes/data/models/dad_joke_model.dart';
import 'package:flutter/cupertino.dart';

class JokesService extends ChangeNotifier {
  List<DadJoke> dadJokes = [];
  bool _loadingJokes = false;

  bool get loadingJokes => _loadingJokes;

  set loadingJokes(bool value) {
    _loadingJokes = value;
    notifyListeners();
  }

  Future loadJokes() async {
    loadingJokes = true;
    return api.loadJokes().then((response) {
      dadJokes = [];
      List result = response.data["results"];
      dadJokes.addAll(result.map((e) => DadJoke.fromMap(e)).toList());
      print(dadJokes.length);
      return response;
    }).catchError((error) {
      print('****************************ERROR******************');
      print(error);
      return error;
    });
  }
}

var jokesService = JokesService();
