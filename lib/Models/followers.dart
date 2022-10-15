class Followers {
  String login;
  int id;
  String avatar_url;

  Followers({required this.avatar_url, required this.id, required this.login});

  factory Followers.fromMap(Map<String, dynamic> map) {
    Followers followers;

    followers = Followers(
      id: map['id'],
      login: map['login'],
      avatar_url: map['avatar_url'] ?? '',
    );

    return followers;
  }
}
