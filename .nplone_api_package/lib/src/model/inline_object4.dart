//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:typed_data';
import 'package:nplone_api/src/model/space_edit.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object4.g.dart';

/// InlineObject4
///
/// Properties:
/// * [icon] - Иконка пространства
/// * [banner] - Баннер пространства
/// * [data] 
abstract class InlineObject4 implements Built<InlineObject4, InlineObject4Builder> {
    /// Иконка пространства
    @BuiltValueField(wireName: r'icon')
    Uint8List? get icon;

    /// Баннер пространства
    @BuiltValueField(wireName: r'banner')
    Uint8List? get banner;

    @BuiltValueField(wireName: r'data')
    SpaceEdit get data;

    InlineObject4._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(InlineObject4Builder b) => b;

    factory InlineObject4([void updates(InlineObject4Builder b)]) = _$InlineObject4;

    @BuiltValueSerializer(custom: true)
    static Serializer<InlineObject4> get serializer => _$InlineObject4Serializer();
}

class _$InlineObject4Serializer implements StructuredSerializer<InlineObject4> {
    @override
    final Iterable<Type> types = const [InlineObject4, _$InlineObject4];

    @override
    final String wireName = r'InlineObject4';

    @override
    Iterable<Object?> serialize(Serializers serializers, InlineObject4 object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.icon != null) {
            result
                ..add(r'icon')
                ..add(serializers.serialize(object.icon,
                    specifiedType: const FullType(Uint8List)));
        }
        if (object.banner != null) {
            result
                ..add(r'banner')
                ..add(serializers.serialize(object.banner,
                    specifiedType: const FullType(Uint8List)));
        }
        result
            ..add(r'data')
            ..add(serializers.serialize(object.data,
                specifiedType: const FullType(SpaceEdit)));
        return result;
    }

    @override
    InlineObject4 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InlineObject4Builder();

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
                case r'banner':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Uint8List)) as Uint8List;
                    result.banner = valueDes;
                    break;
                case r'data':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(SpaceEdit)) as SpaceEdit;
                    result.data.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

