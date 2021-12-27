import 'package:test/test.dart';
import 'package:nplone_api/nplone_api.dart';


/// tests for ProviderApi
void main() {
  final instance = NploneApi().getProviderApi();

  group(ProviderApi, () {
    // Получить список провайдеров
    //
    //Future<BuiltList<Provider>> getProviders() async
    test('test getProviders', () async {
      // TODO
    });

    // Создать ссылку для добавления нового провайдера
    //
    //Future<AccountConnectionInitiationDto> initiateProviderConnection(String provider, BuiltList<String> segments, { String acceptLanguage }) async
    test('test initiateProviderConnection', () async {
      // TODO
    });

  });
}
