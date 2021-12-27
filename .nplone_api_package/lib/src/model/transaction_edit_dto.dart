//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:nplone_api/src/model/transaction_view_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_edit_dto.g.dart';

/// Изменённая транзакция
///
/// Properties:
/// * [description] - Описание
/// * [viewConfiguration] 
abstract class TransactionEditDto implements Built<TransactionEditDto, TransactionEditDtoBuilder> {
    /// Описание
    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'viewConfiguration')
    TransactionViewConfiguration? get viewConfiguration;

    TransactionEditDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TransactionEditDtoBuilder b) => b;

    factory TransactionEditDto([void updates(TransactionEditDtoBuilder b)]) = _$TransactionEditDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<TransactionEditDto> get serializer => _$TransactionEditDtoSerializer();
}

class _$TransactionEditDtoSerializer implements StructuredSerializer<TransactionEditDto> {
    @override
    final Iterable<Type> types = const [TransactionEditDto, _$TransactionEditDto];

    @override
    final String wireName = r'TransactionEditDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, TransactionEditDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.viewConfiguration != null) {
            result
                ..add(r'viewConfiguration')
                ..add(serializers.serialize(object.viewConfiguration,
                    specifiedType: const FullType(TransactionViewConfiguration)));
        }
        return result;
    }

    @override
    TransactionEditDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TransactionEditDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'viewConfiguration':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(TransactionViewConfiguration)) as TransactionViewConfiguration;
                    result.viewConfiguration.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

