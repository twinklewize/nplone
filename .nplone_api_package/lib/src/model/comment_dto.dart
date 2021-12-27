//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:nplone_api/src/model/user_summary_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment_dto.g.dart';

/// Информация о комментарии
///
/// Properties:
/// * [id] - ID комментария
/// * [author] 
/// * [postedAt] - Когда был создан
/// * [text] - Текст
/// * [likes] - Кол-во лайков
/// * [liked] - Лайкнул ли этот коммент текущий юзер
abstract class CommentDto implements Built<CommentDto, CommentDtoBuilder> {
    /// ID комментария
    @BuiltValueField(wireName: r'id')
    int get id;

    @BuiltValueField(wireName: r'author')
    UserSummaryDto get author;

    /// Когда был создан
    @BuiltValueField(wireName: r'postedAt')
    DateTime get postedAt;

    /// Текст
    @BuiltValueField(wireName: r'text')
    String get text;

    /// Кол-во лайков
    @BuiltValueField(wireName: r'likes')
    int get likes;

    /// Лайкнул ли этот коммент текущий юзер
    @BuiltValueField(wireName: r'liked')
    bool get liked;

    CommentDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CommentDtoBuilder b) => b;

    factory CommentDto([void updates(CommentDtoBuilder b)]) = _$CommentDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<CommentDto> get serializer => _$CommentDtoSerializer();
}

class _$CommentDtoSerializer implements StructuredSerializer<CommentDto> {
    @override
    final Iterable<Type> types = const [CommentDto, _$CommentDto];

    @override
    final String wireName = r'CommentDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, CommentDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(int)));
        result
            ..add(r'author')
            ..add(serializers.serialize(object.author,
                specifiedType: const FullType(UserSummaryDto)));
        result
            ..add(r'postedAt')
            ..add(serializers.serialize(object.postedAt,
                specifiedType: const FullType(DateTime)));
        result
            ..add(r'text')
            ..add(serializers.serialize(object.text,
                specifiedType: const FullType(String)));
        result
            ..add(r'likes')
            ..add(serializers.serialize(object.likes,
                specifiedType: const FullType(int)));
        result
            ..add(r'liked')
            ..add(serializers.serialize(object.liked,
                specifiedType: const FullType(bool)));
        return result;
    }

    @override
    CommentDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CommentDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.id = valueDes;
                    break;
                case r'author':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(UserSummaryDto)) as UserSummaryDto;
                    result.author.replace(valueDes);
                    break;
                case r'postedAt':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.postedAt = valueDes;
                    break;
                case r'text':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.text = valueDes;
                    break;
                case r'likes':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.likes = valueDes;
                    break;
                case r'liked':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.liked = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

