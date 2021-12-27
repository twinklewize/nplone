//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_view_configuration.g.dart';

/// Информация о доступах к данным транзакции
///
/// Properties:
/// * [showDescription] - Показывать описание
/// * [showType] - Показывать тип
/// * [showOriginator] - Показывать отправителя
/// * [showReceiver] - Показывать торговца/принимающую сторону
/// * [showAccount] - Показывать информацию об счёте отправителя
abstract class TransactionViewConfiguration implements Built<TransactionViewConfiguration, TransactionViewConfigurationBuilder> {
    /// Показывать описание
    @BuiltValueField(wireName: r'showDescription')
    bool get showDescription;

    /// Показывать тип
    @BuiltValueField(wireName: r'showType')
    bool get showType;

    /// Показывать отправителя
    @BuiltValueField(wireName: r'showOriginator')
    bool get showOriginator;

    /// Показывать торговца/принимающую сторону
    @BuiltValueField(wireName: r'showReceiver')
    bool get showReceiver;

    /// Показывать информацию об счёте отправителя
    @BuiltValueField(wireName: r'showAccount')
    bool get showAccount;

    TransactionViewConfiguration._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TransactionViewConfigurationBuilder b) => b;

    factory TransactionViewConfiguration([void updates(TransactionViewConfigurationBuilder b)]) = _$TransactionViewConfiguration;

    @BuiltValueSerializer(custom: true)
    static Serializer<TransactionViewConfiguration> get serializer => _$TransactionViewConfigurationSerializer();
}

class _$TransactionViewConfigurationSerializer implements StructuredSerializer<TransactionViewConfiguration> {
    @override
    final Iterable<Type> types = const [TransactionViewConfiguration, _$TransactionViewConfiguration];

    @override
    final String wireName = r'TransactionViewConfiguration';

    @override
    Iterable<Object?> serialize(Serializers serializers, TransactionViewConfiguration object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'showDescription')
            ..add(serializers.serialize(object.showDescription,
                specifiedType: const FullType(bool)));
        result
            ..add(r'showType')
            ..add(serializers.serialize(object.showType,
                specifiedType: const FullType(bool)));
        result
            ..add(r'showOriginator')
            ..add(serializers.serialize(object.showOriginator,
                specifiedType: const FullType(bool)));
        result
            ..add(r'showReceiver')
            ..add(serializers.serialize(object.showReceiver,
                specifiedType: const FullType(bool)));
        result
            ..add(r'showAccount')
            ..add(serializers.serialize(object.showAccount,
                specifiedType: const FullType(bool)));
        return result;
    }

    @override
    TransactionViewConfiguration deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TransactionViewConfigurationBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'showDescription':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.showDescription = valueDes;
                    break;
                case r'showType':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.showType = valueDes;
                    break;
                case r'showOriginator':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.showOriginator = valueDes;
                    break;
                case r'showReceiver':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.showReceiver = valueDes;
                    break;
                case r'showAccount':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.showAccount = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

