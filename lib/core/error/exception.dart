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

class AuthException implements Exception {
  String message;

  AuthException({required this.message});

  void call() {
    print("AuthException");
  }
}
