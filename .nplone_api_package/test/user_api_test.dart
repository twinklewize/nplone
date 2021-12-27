import 'package:test/test.dart';
import 'package:nplone_api/nplone_api.dart';


/// tests for UserApi
void main() {
  final instance = NploneApi().getUserApi();

  group(UserApi, () {
    // Удалить пользователя
    //
    //Future deleteUser() async
    test('test deleteUser', () async {
      // TODO
    });

    // Получить информацию о пользователе
    //
    //Future<UserInfo> getUserInfo() async
    test('test getUserInfo', () async {
      // TODO
    });

  });
}
