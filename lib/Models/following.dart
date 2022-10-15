class Following {
  String login;
  int id;
  String avatar_url;

  Following({required this.avatar_url, required this.id, required this.login});

  factory Following.fromMap(Map<String, dynamic> map) {
    Following followers;

    followers = Following(
      id: map['id'],
      login: map['login'],
      avatar_url: map['avatar_url'] ?? '',
    );

    return followers;
  }
}
