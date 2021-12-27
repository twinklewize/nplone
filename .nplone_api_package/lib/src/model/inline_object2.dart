//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object2.g.dart';

/// InlineObject2
///
/// Properties:
/// * [file] - Файл
abstract class InlineObject2 implements Built<InlineObject2, InlineObject2Builder> {
    /// Файл
    @BuiltValueField(wireName: r'file')
    Uint8List get file;

    InlineObject2._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(InlineObject2Builder b) => b;

    factory InlineObject2([void updates(InlineObject2Builder b)]) = _$InlineObject2;

    @BuiltValueSerializer(custom: true)
    static Serializer<InlineObject2> get serializer => _$InlineObject2Serializer();
}

class _$InlineObject2Serializer implements StructuredSerializer<InlineObject2> {
    @override
    final Iterable<Type> types = const [InlineObject2, _$InlineObject2];

    @override
    final String wireName = r'InlineObject2';

    @override
    Iterable<Object?> serialize(Serializers serializers, InlineObject2 object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'file')
            ..add(serializers.serialize(object.file,
                specifiedType: const FullType(Uint8List)));
        return result;
    }

    @override
    InlineObject2 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InlineObject2Builder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'file':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Uint8List)) as Uint8List;
                    result.file = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

