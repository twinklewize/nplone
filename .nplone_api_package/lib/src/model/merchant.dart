//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'merchant.g.dart';

/// Информация о продавце
///
/// Properties:
/// * [name] - Название продавца
/// * [categoryCode] - Код MMC категории продавца
abstract class Merchant implements Built<Merchant, MerchantBuilder> {
    /// Название продавца
    @BuiltValueField(wireName: r'name')
    String get name;

    /// Код MMC категории продавца
    @BuiltValueField(wireName: r'categoryCode')
    int get categoryCode;

    Merchant._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(MerchantBuilder b) => b;

    factory Merchant([void updates(MerchantBuilder b)]) = _$Merchant;

    @BuiltValueSerializer(custom: true)
    static Serializer<Merchant> get serializer => _$MerchantSerializer();
}

class _$MerchantSerializer implements StructuredSerializer<Merchant> {
    @override
    final Iterable<Type> types = const [Merchant, _$Merchant];

    @override
    final String wireName = r'Merchant';

    @override
    Iterable<Object?> serialize(Serializers serializers, Merchant object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        result
            ..add(r'categoryCode')
            ..add(serializers.serialize(object.categoryCode,
                specifiedType: const FullType(int)));
        return result;
    }

    @override
    Merchant deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MerchantBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'categoryCode':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.categoryCode = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

