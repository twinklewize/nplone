//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_summary_dto.g.dart';

/// Общая информация о пользователе
///
/// Properties:
/// * [id] - ID пользователя
/// * [name] - Имя пользователя
abstract class UserSummaryDto implements Built<UserSummaryDto, UserSummaryDtoBuilder> {
    /// ID пользователя
    @BuiltValueField(wireName: r'id')
    String get id;

    /// Имя пользователя
    @BuiltValueField(wireName: r'name')
    String? get name;

    UserSummaryDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UserSummaryDtoBuilder b) => b;

    factory UserSummaryDto([void updates(UserSummaryDtoBuilder b)]) = _$UserSummaryDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserSummaryDto> get serializer => _$UserSummaryDtoSerializer();
}

class _$UserSummaryDtoSerializer implements StructuredSerializer<UserSummaryDto> {
    @override
    final Iterable<Type> types = const [UserSummaryDto, _$UserSummaryDto];

    @override
    final String wireName = r'UserSummaryDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, UserSummaryDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    UserSummaryDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserSummaryDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

