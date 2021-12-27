//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:typed_data';
import 'package:nplone_api/src/model/post_edit_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object5.g.dart';

/// InlineObject5
///
/// Properties:
/// * [icon] - Иконка поста
/// * [data] 
abstract class InlineObject5 implements Built<InlineObject5, InlineObject5Builder> {
    /// Иконка поста
    @BuiltValueField(wireName: r'icon')
    Uint8List? get icon;

    @BuiltValueField(wireName: r'data')
    PostEditDto get data;

    InlineObject5._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(InlineObject5Builder b) => b;

    factory InlineObject5([void updates(InlineObject5Builder b)]) = _$InlineObject5;

    @BuiltValueSerializer(custom: true)
    static Serializer<InlineObject5> get serializer => _$InlineObject5Serializer();
}

class _$InlineObject5Serializer implements StructuredSerializer<InlineObject5> {
    @override
    final Iterable<Type> types = const [InlineObject5, _$InlineObject5];

    @override
    final String wireName = r'InlineObject5';

    @override
    Iterable<Object?> serialize(Serializers serializers, InlineObject5 object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.icon != null) {
            result
                ..add(r'icon')
                ..add(serializers.serialize(object.icon,
                    specifiedType: const FullType(Uint8List)));
        }
        result
            ..add(r'data')
            ..add(serializers.serialize(object.data,
                specifiedType: const FullType(PostEditDto)));
        return result;
    }

    @override
    InlineObject5 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InlineObject5Builder();

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

