class AuthRepository {
  Future<String> attemptAutoLogin() async {
    await Future.delayed(Duration(seconds: 1));
    print('unauthenticated');
  }

  Future<String> login({
    String username,
    String password,
  }) async {
    print('attempting login');
    await Future.delayed(Duration(seconds: 2));
    print('logged in');
  }

  Future<void> signUp({
    String username,
    String email,
    String password,
  }) async {
    await Future.delayed(Duration(seconds: 3));
  }

  Future<String> confirmSignUp({
    String username,
    String confirmationCode,
  }) async {
    await Future.delayed(Duration(seconds: 2));
    print('$username $confirmationCode');
  }

  Future<void> signOut() async {
    await Future.delayed(Duration(seconds: 1));
    print('signed out in repo');
  }
}
