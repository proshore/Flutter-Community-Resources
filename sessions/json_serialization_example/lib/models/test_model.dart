class User {
  final String name;
  final String email;

  User(this.name, this.email);

  User.fromModelJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toModelJson() => {
    'name': name,
    'email': email,
  };
}