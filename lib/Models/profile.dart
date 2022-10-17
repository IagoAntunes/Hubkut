import 'package:github/Models/followers.dart';
import 'package:github/Models/following.dart';
import 'package:github/Models/repository.dart';
import 'package:github/Models/starred.dart';

class Profile {
  String login;
  int id;
  String node_id;
  String avatar_url;
  String gravatar_id;
  String url;
  String html_url;
  String followers_url;
  String following_url;
  String gists_url;
  String starred_url;
  String subscriptions_url;
  String organizations_url;
  String repos_url;
  String events_url;
  String received_events_url;
  String type;
  bool site_admin;
  String name;
  String? company;
  String? blog;
  String? location;
  String? email;
  String? hireable;
  String? bio;
  String? twitter_username;
  int public_repos;
  int public_gists;
  int followers;
  int following;
  String created_at;
  String updated_at;

  List<Starred> listStarred = [];
  List<Followers> listFollowers = [];
  List<Following> listFollowing = [];
  List<Repository> listRepository = [];

  Profile({
    required this.location,
    required this.avatar_url,
    required this.bio,
    required this.blog,
    required this.company,
    required this.created_at,
    required this.email,
    required this.events_url,
    required this.followers,
    required this.followers_url,
    required this.following,
    required this.following_url,
    required this.gists_url,
    required this.gravatar_id,
    required this.hireable,
    required this.html_url,
    required this.id,
    required this.login,
    required this.name,
    required this.node_id,
    required this.organizations_url,
    required this.public_gists,
    required this.public_repos,
    required this.received_events_url,
    required this.repos_url,
    required this.site_admin,
    required this.starred_url,
    required this.subscriptions_url,
    required this.twitter_username,
    required this.type,
    required this.updated_at,
    required this.url,
  });

  factory Profile.fromMap(Map<String, dynamic> map) {
    Profile profile;

    profile = Profile(
      location: map['location'],
      avatar_url: map['avatar_url'],
      bio: map['bio'],
      blog: map['blog'],
      company: map['company'],
      created_at: map['created_at'],
      email: map['email'],
      events_url: map['events_url'],
      followers: map['followers'],
      followers_url: map['followers_url'],
      following: map['following'],
      following_url: map['following_url'],
      gists_url: map['gists_url'],
      gravatar_id: map['gravatar_id'],
      hireable: map['hireable'],
      html_url: map['html_url'],
      id: map['id'],
      login: map['login'],
      name: map['name'],
      node_id: map['node_id'],
      organizations_url: map['organizations_url'],
      public_gists: map['public_gists'],
      public_repos: map['public_repos'],
      received_events_url: map['received_events_url'],
      repos_url: map['repos_url'],
      site_admin: map['site_admin'],
      starred_url: map['starred_url'],
      subscriptions_url: map['subscriptions_url'],
      twitter_username: map['twitter_username'],
      type: map['type'],
      updated_at: map['updated_at'],
      url: map['url'],
    );

    return profile;
  }
}
