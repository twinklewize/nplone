import 'package:test/test.dart';
import 'package:nplone_api/nplone_api.dart';


/// tests for TransactionApi
void main() {
  final instance = NploneApi().getTransactionApi();

  group(TransactionApi, () {
    // Добавить комментарий
    //
    //Future<CommentDto> addComment(String id, CommentPostDto commentPostDto) async
    test('test addComment', () async {
      // TODO
    });

    // Добавить файл к транзакции
    //
    //Future<FileDto> addFileToTransaction(String id, { InlineObject2 inlineObject2 }) async
    test('test addFileToTransaction', () async {
      // TODO
    });

    //Future createPost1(String id) async
    test('test createPost1', () async {
      // TODO
    });

    // Изменить информацию о транзакции
    //
    //Future editTransaction(String id, TransactionEditDto transactionEditDto) async
    test('test editTransaction', () async {
      // TODO
    });

    // Получить комментарии
    //
    //Future<CommentListDto> getComments(String id, { int page, int size }) async
    test('test getComments', () async {
      // TODO
    });

    // Получить прикреплённые файлы транзакции
    //
    //Future<FileListDto> getTransactionFiles(String id) async
    test('test getTransactionFiles', () async {
      // TODO
    });

    // Получить полную информацию от транзакции
    //
    //Future<TransactionDetailsDto> getTransactionInfo(String id, { String space }) async
    test('test getTransactionInfo', () async {
      // TODO
    });

    // Лайкнуть комментарий
    //
    //Future likeComment(String id, int comment) async
    test('test likeComment', () async {
      // TODO
    });

    // Удалить файл из транзакции
    //
    //Future removeFileFromTransaction(String id, String fid) async
    test('test removeFileFromTransaction', () async {
      // TODO
    });

  });
}
