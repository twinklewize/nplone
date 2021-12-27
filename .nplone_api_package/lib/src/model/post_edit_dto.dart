//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_edit_dto.g.dart';

/// Данные
///
/// Properties:
/// * [title] - Название поста
/// * [description] - Описание поста
/// * [transactions] - Привязанные транзакции
abstract class PostEditDto implements Built<PostEditDto, PostEditDtoBuilder> {
    /// Название поста
    @BuiltValueField(wireName: r'title')
    String get title;

    /// Описание поста
    @BuiltValueField(wireName: r'description')
    String get description;

    /// Привязанные транзакции
    @BuiltValueField(wireName: r'transactions')
    BuiltList<String> get transactions;

    PostEditDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PostEditDtoBuilder b) => b;

    factory PostEditDto([void updates(PostEditDtoBuilder b)]) = _$PostEditDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<PostEditDto> get serializer => _$PostEditDtoSerializer();
}

class _$PostEditDtoSerializer implements StructuredSerializer<PostEditDto> {
    @override
    final Iterable<Type> types = const [PostEditDto, _$PostEditDto];

    @override
    final String wireName = r'PostEditDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, PostEditDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'title')
            ..add(serializers.serialize(object.title,
                specifiedType: const FullType(String)));
        result
            ..add(r'description')
            ..add(serializers.serialize(object.description,
                specifiedType: const FullType(String)));
        result
            ..add(r'transactions')
            ..add(serializers.serialize(object.transactions,
                specifiedType: const FullType(BuiltList, [FullType(String)])));
        return result;
    }

    @override
    PostEditDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PostEditDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'title':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.title = valueDes;
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'transactions':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.transactions.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

