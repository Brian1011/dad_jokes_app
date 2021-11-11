import 'package:dad_jokes/api/api.dart';
import 'package:dad_jokes/dad_joke_model.dart';
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
      print('*******************RESPONSE***********************');
      print(response.data);
    }).catchError((error) {
      print('****************************ERROR******************');
      print(error);
    });
  }
}

var jokesService = JokesService();