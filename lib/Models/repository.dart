class Repository {
  int id;
  String node_id;
  String name;
  String full_name;
  bool private;
  String? description;

  Repository({
    required this.id,
    required this.node_id,
    required this.name,
    required this.full_name,
    required this.description,
    required this.private,
  });

  factory Repository.fromMap(Map<String, dynamic> map) {
    Repository repository;

    repository = Repository(
      id: map['id'],
      node_id: map['node_id'],
      name: map['name'],
      full_name: map['full_name'],
      description: map['description'],
      private: map['private'],
    );

    return repository;
  }
}
