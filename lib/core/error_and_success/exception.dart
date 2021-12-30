class ServerException implements Exception {
  void call() {
    print("Server Exception");
  }
}

class CacheException implements Exception {
  void call() {
    print("Cache Exception");
  }
}

class NoInternetConnectionException implements Exception {
  void call() {
    print("No Internet Connection");
  }
}

// Auth Exceptions
class UserNotFoundException implements Exception {
  void call() {
    print("No User Found Exception");
  }
}

class PasswordNotMatchException implements Exception {
  void call() {
    print("Password Not Match Exception");
  }
}

class RegisterException implements Exception {
  void call() {
    print("Registration Exception");
  }
}
