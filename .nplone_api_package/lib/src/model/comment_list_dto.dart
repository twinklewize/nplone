//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:nplone_api/src/model/comment_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment_list_dto.g.dart';

/// CommentListDto
///
/// Properties:
/// * [comments] 
/// * [count] 
/// * [nextPage] 
abstract class CommentListDto implements Built<CommentListDto, CommentListDtoBuilder> {
    @BuiltValueField(wireName: r'comments')
    BuiltList<CommentDto>? get comments;

    @BuiltValueField(wireName: r'count')
    int? get count;

    @BuiltValueField(wireName: r'nextPage')
    int? get nextPage;

    CommentListDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CommentListDtoBuilder b) => b;

    factory CommentListDto([void updates(CommentListDtoBuilder b)]) = _$CommentListDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<CommentListDto> get serializer => _$CommentListDtoSerializer();
}

class _$CommentListDtoSerializer implements StructuredSerializer<CommentListDto> {
    @override
    final Iterable<Type> types = const [CommentListDto, _$CommentListDto];

    @override
    final String wireName = r'CommentListDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, CommentListDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.comments != null) {
            result
                ..add(r'comments')
                ..add(serializers.serialize(object.comments,
                    specifiedType: const FullType(BuiltList, [FullType(CommentDto)])));
        }
        if (object.count != null) {
            result
                ..add(r'count')
                ..add(serializers.serialize(object.count,
                    specifiedType: const FullType(int)));
        }
        if (object.nextPage != null) {
            result
                ..add(r'nextPage')
                ..add(serializers.serialize(object.nextPage,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    CommentListDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CommentListDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'comments':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(CommentDto)])) as BuiltList<CommentDto>;
                    result.comments.replace(valueDes);
                    break;
                case r'count':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.count = valueDes;
                    break;
                case r'nextPage':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.nextPage = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

