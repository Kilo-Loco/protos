class SignUpCredentials {
  SignUpCredentials({this.username, this.email, this.password});

  final String username;
  final String email;
  final String password;

  @override
  String toString() {
    return "Username: $username\nEmail: $email\nPassword: $password";
  }
}
