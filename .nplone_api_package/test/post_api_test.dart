import 'package:test/test.dart';
import 'package:nplone_api/nplone_api.dart';


/// tests for PostApi
void main() {
  final instance = NploneApi().getPostApi();

  group(PostApi, () {
    // Добавить файл к транзакции
    //
    //Future<FileDto> addFileToPost(String id, { InlineObject3 inlineObject3 }) async
    test('test addFileToPost', () async {
      // TODO
    });

    // Добавить комментарий
    //
    //Future<CommentDto> addPostComment(String id, CommentPostDto commentPostDto) async
    test('test addPostComment', () async {
      // TODO
    });

    // Изменить информацию о посте
    //
    //Future editPost(String id, { InlineObject5 inlineObject5 }) async
    test('test editPost', () async {
      // TODO
    });

    // Получить полную информацию о посте
    //
    //Future<PostDetailsDto> getPost(String id) async
    test('test getPost', () async {
      // TODO
    });

    // Получить комментарии
    //
    //Future<CommentListDto> getPostComments(String id, { int page, int size }) async
    test('test getPostComments', () async {
      // TODO
    });

    // Получить прикреплённые файлы транзакции
    //
    //Future<FileListDto> getPostFiles(String id) async
    test('test getPostFiles', () async {
      // TODO
    });

    // Лайкнуть пост
    //
    //Future likePost(String id) async
    test('test likePost', () async {
      // TODO
    });

    // Лайкнуть комментарий
    //
    //Future likePostComment(String id, int comment) async
    test('test likePostComment', () async {
      // TODO
    });

    // Удалить файл из транзакции
    //
    //Future removeFileFromPost(String id, String fid) async
    test('test removeFileFromPost', () async {
      // TODO
    });

  });
}
