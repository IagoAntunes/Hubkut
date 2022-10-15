import 'dart:convert';
import 'package:github/Models/followers.dart';
import 'package:github/Models/following.dart';
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

        List<dynamic> listStarred = await getStarred(
          profile.starred_url.substring(
            0,
            profile.starred_url.indexOf('{'),
          ),
        );
        List<dynamic> listFollowers = await getFollowers(profile.followers_url);
        List<dynamic> listFollowing = await getFollowing(
          profile.following_url.substring(
            0,
            profile.following_url.indexOf('{'),
          ),
        );
        for (var data in listFollowers) {
          profile.listFollowers.add(Followers.fromMap(data));
        }
        for (var data in listFollowing) {
          profile.listFollowing.add(Following.fromMap(data));
        }
        for (var data in listStarred) {
          profile.listStarred.add(Starred.fromMap(data));
        }

        return profile;
      }
    } catch (e) {}
  }

  void teste() {}

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

  static getFollowers(String url) async {
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

  static getFollowing(String url) async {
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
