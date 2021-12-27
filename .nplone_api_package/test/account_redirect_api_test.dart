import 'package:test/test.dart';
import 'package:nplone_api/nplone_api.dart';


/// tests for AccountRedirectApi
void main() {
  final instance = NploneApi().getAccountRedirectApi();

  group(AccountRedirectApi, () {
    // Закончить flow добавления провайдера
    //
    //Future finishAccountRedirect(String state) async
    test('test finishAccountRedirect', () async {
      // TODO
    });

    // Начать flow добавления провайдера
    //
    //Future startAccountRedirect(String code) async
    test('test startAccountRedirect', () async {
      // TODO
    });

  });
}
