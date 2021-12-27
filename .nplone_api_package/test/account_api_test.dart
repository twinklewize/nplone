import 'package:test/test.dart';
import 'package:nplone_api/nplone_api.dart';


/// tests for AccountApi
void main() {
  final instance = NploneApi().getAccountApi();

  group(AccountApi, () {
    // Получить все счета
    //
    //Future<BuiltList<Account>> getAccounts() async
    test('test getAccounts', () async {
      // TODO
    });

  });
}
