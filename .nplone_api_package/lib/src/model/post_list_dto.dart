//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:nplone_api/src/model/post_item_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_list_dto.g.dart';

/// Страница с постами
///
/// Properties:
/// * [posts] - Посты
/// * [nextPageToken] - Токен следующей страницы
abstract class PostListDto implements Built<PostListDto, PostListDtoBuilder> {
    /// Посты
    @BuiltValueField(wireName: r'posts')
    BuiltList<PostItemDto> get posts;

    /// Токен следующей страницы
    @BuiltValueField(wireName: r'nextPageToken')
    String get nextPageToken;

    PostListDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PostListDtoBuilder b) => b;

    factory PostListDto([void updates(PostListDtoBuilder b)]) = _$PostListDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<PostListDto> get serializer => _$PostListDtoSerializer();
}

class _$PostListDtoSerializer implements StructuredSerializer<PostListDto> {
    @override
    final Iterable<Type> types = const [PostListDto, _$PostListDto];

    @override
    final String wireName = r'PostListDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, PostListDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'posts')
            ..add(serializers.serialize(object.posts,
                specifiedType: const FullType(BuiltList, [FullType(PostItemDto)])));
        result
            ..add(r'nextPageToken')
            ..add(serializers.serialize(object.nextPageToken,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    PostListDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PostListDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'posts':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(PostItemDto)])) as BuiltList<PostItemDto>;
                    result.posts.replace(valueDes);
                    break;
                case r'nextPageToken':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.nextPageToken = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

