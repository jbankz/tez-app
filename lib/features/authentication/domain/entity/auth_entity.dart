class AuthEntity {
  final String username;
  final String password;

  AuthEntity({required this.username, required this.password});

  Map<String, dynamic> toJson() => {'username': username, 'password': password};
}
