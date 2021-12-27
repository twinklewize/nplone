import 'package:test/test.dart';
import 'package:nplone_api/nplone_api.dart';


/// tests for AuthApi
void main() {
  final instance = NploneApi().getAuthApi();

  group(AuthApi, () {
    // Аутентификация через аккаунт Google
    //
    //Future<TokenInfo> googleSignIn(GoogleToken googleToken) async
    test('test googleSignIn', () async {
      // TODO
    });

    // Войти под пользователем
    //
    //Future<TokenInfo> login(UserLogin userLogin) async
    test('test login', () async {
      // TODO
    });

    // Зарегистрировать нового пользователя в системе
    //
    //Future registerUser(UserRegister userRegister) async
    test('test registerUser', () async {
      // TODO
    });

  });
}
