import 'package:dad_jokes/api/dio_api.dart';
import 'package:dio/dio.dart';

class Api extends DioApi {
  Future loadJokes() async {
    return dio.get("https://icanhazdadjoke.com/search",
        options: Options(headers: {"Accept": "application/json"}));
  }
}

Api api = Api();
