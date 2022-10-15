class Starred {
  int id;
  String name;
  String? description;

  Starred({required this.id, required this.name, required this.description});

  factory Starred.fromMap(Map<String, dynamic> map) {
    Starred starred;

    starred = Starred(
      id: map['id'],
      name: map['name'],
      description: map['description'] ?? '',
    );

    return starred;
  }
}
