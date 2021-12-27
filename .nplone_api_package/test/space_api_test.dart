import 'package:test/test.dart';
import 'package:nplone_api/nplone_api.dart';


/// tests for SpaceApi
void main() {
  final instance = NploneApi().getSpaceApi();

  group(SpaceApi, () {
    // Создать пост
    //
    //Future createPost(String id, { InlineObject1 inlineObject1 }) async
    test('test createPost', () async {
      // TODO
    });

    // Создать новое пространство
    //
    //Future<SpaceItem> createSpace({ InlineObject inlineObject }) async
    test('test createSpace', () async {
      // TODO
    });

    // Удалить пространство
    //
    //Future deleteSpace(String id) async
    test('test deleteSpace', () async {
      // TODO
    });

    // Изменить пространство
    //
    //Future<SpaceItem> editSpace(String id, { InlineObject4 inlineObject4 }) async
    test('test editSpace', () async {
      // TODO
    });

    // Получить посты
    //
    //Future<PostListDto> getPosts(String id, { int page }) async
    test('test getPosts', () async {
      // TODO
    });

    // Получить полную информацию о пространстве
    //
    //Future<Space> getSpace(String id) async
    test('test getSpace', () async {
      // TODO
    });

    // Изменить банковскую информацию по пространству
    //
    //Future<SpaceBankingInfo> getSpaceBankingInfo(String id) async
    test('test getSpaceBankingInfo', () async {
      // TODO
    });

    // Получить опубликованные транзакции в пространстве
    //
    //Future<TransactionListDto> getSpacePostedTransactions(String id, { String page }) async
    test('test getSpacePostedTransactions', () async {
      // TODO
    });

    // Изменить транзакции в пространстве
    //
    //Future<TransactionListDto> getSpaceTransactions(String id, { String page }) async
    test('test getSpaceTransactions', () async {
      // TODO
    });

    // Получить пространства
    //
    //Future<SpaceList> getSpaces({ int size, int page }) async
    test('test getSpaces', () async {
      // TODO
    });

  });
}
