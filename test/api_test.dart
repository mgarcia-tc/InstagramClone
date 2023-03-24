import 'package:flutter_test/flutter_test.dart';
import 'package:instagram_app/api/instagram_api.dart';

void main() {
  late final InstagramApi api;

  setUpAll(() => api = InstagramApi(
      baseUrl: "env.url", 
      apiKey: 'env.key'));

  test('Get user', () async {
    // final username = await api.getUser("tammy.parra");

    // if(username != null){
    // print(username.data!.user!.biography);

    // }

  });

}
