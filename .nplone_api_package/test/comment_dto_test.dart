import 'package:test/test.dart';
import 'package:nplone_api/nplone_api.dart';

// tests for CommentDto
void main() {
  final instance = CommentDtoBuilder();
  // TODO add properties to the builder and call build()

  group(CommentDto, () {
    // ID комментария
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // UserSummaryDto author
    test('to test the property `author`', () async {
      // TODO
    });

    // Когда был создан
    // DateTime postedAt
    test('to test the property `postedAt`', () async {
      // TODO
    });

    // Текст
    // String text
    test('to test the property `text`', () async {
      // TODO
    });

    // Кол-во лайков
    // int likes
    test('to test the property `likes`', () async {
      // TODO
    });

    // Лайкнул ли этот коммент текущий юзер
    // bool liked
    test('to test the property `liked`', () async {
      // TODO
    });

  });
}
