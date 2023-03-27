import 'package:dio/dio.dart';
import 'package:instagram_app/models/insta_response.dart';

class InstagramApi {
  InstagramApi({
    required this.baseUrl,
    required this.apiKey,
    this.rapidApiHost = 'env.host',
    this.connectTimeout = const Duration(seconds: 15),
    this.receiveTimeout = const Duration(seconds: 15),
  }) : dio = Dio(BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: connectTimeout,
          receiveTimeout: receiveTimeout,
          headers: {
            'X-RapidAPI-Key': apiKey,
            'X-RapidAPI-Host': rapidApiHost,
            'useQueryString': 'true'
          },
        ));

  final Dio dio;
  final String baseUrl;
  final String rapidApiHost;
  final Duration connectTimeout;
  final Duration receiveTimeout;
  final String apiKey;

  Future<UserName?> getUser(String username) async {
    Map<String, dynamic> queryParam = {'username': username};
    final response = await dio.get('/user/details-by-username/',
        queryParameters: queryParam);

    UserName? res;

    if (response.data != null) {
      res = userNameFromJson(response.data);
    }

    return res;
  }
}
