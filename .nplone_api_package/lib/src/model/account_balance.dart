//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_balance.g.dart';

/// Баланс счёта
///
/// Properties:
/// * [currencyCode] - Код валюты
/// * [scale] - Размерность значения
/// * [unscaledValue] - Безразмерное значение баланса
abstract class AccountBalance implements Built<AccountBalance, AccountBalanceBuilder> {
    /// Код валюты
    @BuiltValueField(wireName: r'currencyCode')
    String get currencyCode;

    /// Размерность значения
    @BuiltValueField(wireName: r'scale')
    int get scale;

    /// Безразмерное значение баланса
    @BuiltValueField(wireName: r'unscaledValue')
    int get unscaledValue;

    AccountBalance._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AccountBalanceBuilder b) => b;

    factory AccountBalance([void updates(AccountBalanceBuilder b)]) = _$AccountBalance;

    @BuiltValueSerializer(custom: true)
    static Serializer<AccountBalance> get serializer => _$AccountBalanceSerializer();
}

class _$AccountBalanceSerializer implements StructuredSerializer<AccountBalance> {
    @override
    final Iterable<Type> types = const [AccountBalance, _$AccountBalance];

    @override
    final String wireName = r'AccountBalance';

    @override
    Iterable<Object?> serialize(Serializers serializers, AccountBalance object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'currencyCode')
            ..add(serializers.serialize(object.currencyCode,
                specifiedType: const FullType(String)));
        result
            ..add(r'scale')
            ..add(serializers.serialize(object.scale,
                specifiedType: const FullType(int)));
        result
            ..add(r'unscaledValue')
            ..add(serializers.serialize(object.unscaledValue,
                specifiedType: const FullType(int)));
        return result;
    }

    @override
    AccountBalance deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AccountBalanceBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'currencyCode':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.currencyCode = valueDes;
                    break;
                case r'scale':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.scale = valueDes;
                    break;
                case r'unscaledValue':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.unscaledValue = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

