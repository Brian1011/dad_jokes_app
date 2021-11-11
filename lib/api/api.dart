import 'package:dad_jokes/api/dio_api.dart';

class Api extends DioApi {
  Future loadJokes() async {
    return dio.get("https://icanhazdadjoke.com/search");
  }
}

Api api = Api();
