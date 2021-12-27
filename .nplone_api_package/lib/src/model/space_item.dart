//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'space_item.g.dart';

/// SpaceItem
///
/// Properties:
/// * [id] - ID пространства
/// * [name] - Имя пространства
/// * [icon] - Ссылка на иконку пространства
/// * [mode] - Режим доступа
/// * [primaryAccount] - ID основного счёта пространства
abstract class SpaceItem implements Built<SpaceItem, SpaceItemBuilder> {
    /// ID пространства
    @BuiltValueField(wireName: r'id')
    String get id;

    /// Имя пространства
    @BuiltValueField(wireName: r'name')
    String get name;

    /// Ссылка на иконку пространства
    @BuiltValueField(wireName: r'icon')
    String get icon;

    /// Режим доступа
    @BuiltValueField(wireName: r'mode')
    SpaceItemModeEnum get mode;
    // enum modeEnum {  PRIVATE,  INVITATION,  SUBSCRIPTION,  PUBLIC,  };

    /// ID основного счёта пространства
    @BuiltValueField(wireName: r'primaryAccount')
    String get primaryAccount;

    SpaceItem._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SpaceItemBuilder b) => b;

    factory SpaceItem([void updates(SpaceItemBuilder b)]) = _$SpaceItem;

    @BuiltValueSerializer(custom: true)
    static Serializer<SpaceItem> get serializer => _$SpaceItemSerializer();
}

class _$SpaceItemSerializer implements StructuredSerializer<SpaceItem> {
    @override
    final Iterable<Type> types = const [SpaceItem, _$SpaceItem];

    @override
    final String wireName = r'SpaceItem';

    @override
    Iterable<Object?> serialize(Serializers serializers, SpaceItem object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        result
            ..add(r'icon')
            ..add(serializers.serialize(object.icon,
                specifiedType: const FullType(String)));
        result
            ..add(r'mode')
            ..add(serializers.serialize(object.mode,
                specifiedType: const FullType(SpaceItemModeEnum)));
        result
            ..add(r'primaryAccount')
            ..add(serializers.serialize(object.primaryAccount,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    SpaceItem deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SpaceItemBuilder();

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
                case r'icon':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.icon = valueDes;
                    break;
                case r'mode':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(SpaceItemModeEnum)) as SpaceItemModeEnum;
                    result.mode = valueDes;
                    break;
                case r'primaryAccount':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.primaryAccount = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

class SpaceItemModeEnum extends EnumClass {

  /// Режим доступа
  @BuiltValueEnumConst(wireName: r'PRIVATE')
  static const SpaceItemModeEnum PRIVATE = _$spaceItemModeEnum_PRIVATE;
  /// Режим доступа
  @BuiltValueEnumConst(wireName: r'INVITATION')
  static const SpaceItemModeEnum INVITATION = _$spaceItemModeEnum_INVITATION;
  /// Режим доступа
  @BuiltValueEnumConst(wireName: r'SUBSCRIPTION')
  static const SpaceItemModeEnum SUBSCRIPTION = _$spaceItemModeEnum_SUBSCRIPTION;
  /// Режим доступа
  @BuiltValueEnumConst(wireName: r'PUBLIC')
  static const SpaceItemModeEnum PUBLIC = _$spaceItemModeEnum_PUBLIC;

  static Serializer<SpaceItemModeEnum> get serializer => _$spaceItemModeEnumSerializer;

  const SpaceItemModeEnum._(String name): super(name);

  static BuiltSet<SpaceItemModeEnum> get values => _$spaceItemModeEnumValues;
  static SpaceItemModeEnum valueOf(String name) => _$spaceItemModeEnumValueOf(name);
}

