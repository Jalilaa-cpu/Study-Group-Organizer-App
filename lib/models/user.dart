class User {
  final String id;
  final String email;
  final String name;

  User({
    required this.id,
    required this.email,
    required this.name,
  });

  // Convert User to Map for storage/API
  Map<String, dynamic> toMap() => {
    'id': id,
    'email': email,
    'name': name,
  };

  // Create User from Map (storage/API)
  factory User.fromMap(Map<String, dynamic> map) => User(
    id: map['id'],
    email: map['email'],
    name: map['name'],
  );
}