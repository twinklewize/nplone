import 'package:test/test.dart';
import 'package:nplone_api/nplone_api.dart';


/// tests for StaticApi
void main() {
  final instance = NploneApi().getStaticApi();

  group(StaticApi, () {
    // Получить изображение баннера пространства по-умолчанию
    //
    //Future<Uint8List> getDefaultSpaceBanner() async
    test('test getDefaultSpaceBanner', () async {
      // TODO
    });

    // Получить изображение пространства по-умолчанию
    //
    //Future<Uint8List> getDefaultSpaceImage() async
    test('test getDefaultSpaceImage', () async {
      // TODO
    });

    // Получить файл поста
    //
    //Future<Uint8List> getPostFile(String id, String ext) async
    test('test getPostFile', () async {
      // TODO
    });

    // Получить изображение пространства
    //
    //Future<Uint8List> getSpaceImage(String id) async
    test('test getSpaceImage', () async {
      // TODO
    });

    // Получить файл транзакции
    //
    //Future<Uint8List> getTransactionFile(String id, String ext) async
    test('test getTransactionFile', () async {
      // TODO
    });

  });
}
