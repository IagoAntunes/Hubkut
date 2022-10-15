import 'dart:convert';
import 'package:github/Models/profile.dart';
import 'package:github/Models/starred.dart';
import 'package:http/http.dart' as http;

class General {
  static getProfile(String username) async {
    String url = 'https://api.github.com/users/$username';
    Profile profile;
    final response = await http.get(
      Uri.parse(url),
    );
    try {
      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);

        profile = Profile.fromMap(data);
        print(profile.starred_url.indexOf('{'));

        List<dynamic> teste = await getStarred(
          profile.starred_url.substring(
            0,
            profile.starred_url.indexOf('{'),
          ),
        );
        for (var data in teste) {
          profile.listStarred.add(Starred.fromMap(data));
        }
        print('oo');
        return profile;
      }
    } catch (e) {
      print(e);
    }
  }

  static getStarred(String url) async {
    Starred starred;
    final response = await http.get(
      Uri.parse(url),
    );
    try {
      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        return data;
      }
    } catch (e) {
      print(e);
    }
  }
}
