class AuthenticatedUser {
    final String username;
    final String accessToken;
    final int userId;
    AuthenticatedUser({required this.username, required this.accessToken, required this.userId});
    factory AuthenticatedUser.fromJson(Map<String, dynamic> json) {
      return AuthenticatedUser(
        username: json['username'],
        accessToken: json['accessToken'],
        userId: json['id'],
      );
    }
}