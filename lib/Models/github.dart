import 'package:github/Models/profile.dart';

class Github {
  Profile profile;

  Github({required this.profile});
  factory Github.fromMap(Map<String, dynamic> map) {
    Github github;
    Profile profile;

    profile = Profile.fromMap(map);

    github = Github(profile: profile);

    return github;
  }
}
