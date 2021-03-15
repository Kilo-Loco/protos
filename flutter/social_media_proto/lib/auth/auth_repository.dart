class AuthRepository {
  Future<void> login() async {
    print('attempting login');
    await Future.delayed(Duration(seconds: 2));
    print('logged in');
  }

  Future<void> signUp() async {
    await Future.delayed(Duration(seconds: 3));
  }
}
