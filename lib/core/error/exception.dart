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
