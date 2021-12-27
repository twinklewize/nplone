//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object3.g.dart';

/// InlineObject3
///
/// Properties:
/// * [file] - Файл
abstract class InlineObject3 implements Built<InlineObject3, InlineObject3Builder> {
    /// Файл
    @BuiltValueField(wireName: r'file')
    Uint8List get file;

    InlineObject3._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(InlineObject3Builder b) => b;

    factory InlineObject3([void updates(InlineObject3Builder b)]) = _$InlineObject3;

    @BuiltValueSerializer(custom: true)
    static Serializer<InlineObject3> get serializer => _$InlineObject3Serializer();
}

class _$InlineObject3Serializer implements StructuredSerializer<InlineObject3> {
    @override
    final Iterable<Type> types = const [InlineObject3, _$InlineObject3];

    @override
    final String wireName = r'InlineObject3';

    @override
    Iterable<Object?> serialize(Serializers serializers, InlineObject3 object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'file')
            ..add(serializers.serialize(object.file,
                specifiedType: const FullType(Uint8List)));
        return result;
    }

    @override
    InlineObject3 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InlineObject3Builder();

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

