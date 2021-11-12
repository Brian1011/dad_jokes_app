import 'package:dio/dio.dart';

class DioApi {
  Dio dio = Dio();

  DioApi() {
    dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: _requestIntercept));
  }

  _requestIntercept(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.baseUrl = "https://icanhazdadjoke.com";
    options.headers.addAll({"Accept": "application/json"});
    return options;
  }
}
