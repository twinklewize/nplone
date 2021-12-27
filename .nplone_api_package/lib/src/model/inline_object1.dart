//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:typed_data';
import 'package:nplone_api/src/model/post_edit_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object1.g.dart';

/// InlineObject1
///
/// Properties:
/// * [icon] - Иконка поста
/// * [data] 
abstract class InlineObject1 implements Built<InlineObject1, InlineObject1Builder> {
    /// Иконка поста
    @BuiltValueField(wireName: r'icon')
    Uint8List get icon;

    @BuiltValueField(wireName: r'data')
    PostEditDto get data;

    InlineObject1._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(InlineObject1Builder b) => b;

    factory InlineObject1([void updates(InlineObject1Builder b)]) = _$InlineObject1;

    @BuiltValueSerializer(custom: true)
    static Serializer<InlineObject1> get serializer => _$InlineObject1Serializer();
}

class _$InlineObject1Serializer implements StructuredSerializer<InlineObject1> {
    @override
    final Iterable<Type> types = const [InlineObject1, _$InlineObject1];

    @override
    final String wireName = r'InlineObject1';

    @override
    Iterable<Object?> serialize(Serializers serializers, InlineObject1 object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'icon')
            ..add(serializers.serialize(object.icon,
                specifiedType: const FullType(Uint8List)));
        result
            ..add(r'data')
            ..add(serializers.serialize(object.data,
                specifiedType: const FullType(PostEditDto)));
        return result;
    }

    @override
    InlineObject1 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InlineObject1Builder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'icon':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Uint8List)) as Uint8List;
                    result.icon = valueDes;
                    break;
                case r'data':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PostEditDto)) as PostEditDto;
                    result.data.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

