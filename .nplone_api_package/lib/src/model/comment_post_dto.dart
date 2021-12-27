//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment_post_dto.g.dart';

/// Информация для создания комментария
///
/// Properties:
/// * [text] - Текст комментария
abstract class CommentPostDto implements Built<CommentPostDto, CommentPostDtoBuilder> {
    /// Текст комментария
    @BuiltValueField(wireName: r'text')
    String? get text;

    CommentPostDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CommentPostDtoBuilder b) => b;

    factory CommentPostDto([void updates(CommentPostDtoBuilder b)]) = _$CommentPostDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<CommentPostDto> get serializer => _$CommentPostDtoSerializer();
}

class _$CommentPostDtoSerializer implements StructuredSerializer<CommentPostDto> {
    @override
    final Iterable<Type> types = const [CommentPostDto, _$CommentPostDto];

    @override
    final String wireName = r'CommentPostDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, CommentPostDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.text != null) {
            result
                ..add(r'text')
                ..add(serializers.serialize(object.text,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    CommentPostDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CommentPostDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'text':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.text = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

