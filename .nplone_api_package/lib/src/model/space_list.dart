//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:nplone_api/src/model/space_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'space_list.g.dart';

/// SpaceList
///
/// Properties:
/// * [items] - Список пространств
/// * [count] - Количество элементов
/// * [last] - Является ли текущая выборка последней в списке
abstract class SpaceList implements Built<SpaceList, SpaceListBuilder> {
    /// Список пространств
    @BuiltValueField(wireName: r'items')
    BuiltList<SpaceItem> get items;

    /// Количество элементов
    @BuiltValueField(wireName: r'count')
    int get count;

    /// Является ли текущая выборка последней в списке
    @BuiltValueField(wireName: r'last')
    bool get last;

    SpaceList._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SpaceListBuilder b) => b;

    factory SpaceList([void updates(SpaceListBuilder b)]) = _$SpaceList;

    @BuiltValueSerializer(custom: true)
    static Serializer<SpaceList> get serializer => _$SpaceListSerializer();
}

class _$SpaceListSerializer implements StructuredSerializer<SpaceList> {
    @override
    final Iterable<Type> types = const [SpaceList, _$SpaceList];

    @override
    final String wireName = r'SpaceList';

    @override
    Iterable<Object?> serialize(Serializers serializers, SpaceList object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'items')
            ..add(serializers.serialize(object.items,
                specifiedType: const FullType(BuiltList, [FullType(SpaceItem)])));
        result
            ..add(r'count')
            ..add(serializers.serialize(object.count,
                specifiedType: const FullType(int)));
        result
            ..add(r'last')
            ..add(serializers.serialize(object.last,
                specifiedType: const FullType(bool)));
        return result;
    }

    @override
    SpaceList deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SpaceListBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'items':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(SpaceItem)])) as BuiltList<SpaceItem>;
                    result.items.replace(valueDes);
                    break;
                case r'count':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.count = valueDes;
                    break;
                case r'last':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.last = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

