//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:nplone_api/src/model/account_balance.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_item_dto.g.dart';

/// Пост
///
/// Properties:
/// * [id] - ID поста
/// * [postedWhen] - Когда был опубликован
/// * [title] - Название поста
/// * [descriptionStripped] - Текст поста
/// * [icon] - URL иконки
/// * [type] - Тип поста
/// * [likes] - Количество лайков
/// * [liked] - Лайкнул ли пост пользователь
/// * [comments] - Количество комментариев к посту
/// * [transactionBalances] - Балансы прикреплённых транзакций
abstract class PostItemDto implements Built<PostItemDto, PostItemDtoBuilder> {
    /// ID поста
    @BuiltValueField(wireName: r'id')
    int get id;

    /// Когда был опубликован
    @BuiltValueField(wireName: r'postedWhen')
    DateTime get postedWhen;

    /// Название поста
    @BuiltValueField(wireName: r'title')
    String get title;

    /// Текст поста
    @BuiltValueField(wireName: r'descriptionStripped')
    String get descriptionStripped;

    /// URL иконки
    @BuiltValueField(wireName: r'icon')
    String get icon;

    /// Тип поста
    @BuiltValueField(wireName: r'type')
    PostItemDtoTypeEnum get type;
    // enum typeEnum {  NEWS,  };

    /// Количество лайков
    @BuiltValueField(wireName: r'likes')
    int get likes;

    /// Лайкнул ли пост пользователь
    @BuiltValueField(wireName: r'liked')
    bool get liked;

    /// Количество комментариев к посту
    @BuiltValueField(wireName: r'comments')
    int get comments;

    /// Балансы прикреплённых транзакций
    @BuiltValueField(wireName: r'transactionBalances')
    BuiltList<AccountBalance> get transactionBalances;

    PostItemDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PostItemDtoBuilder b) => b;

    factory PostItemDto([void updates(PostItemDtoBuilder b)]) = _$PostItemDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<PostItemDto> get serializer => _$PostItemDtoSerializer();
}

class _$PostItemDtoSerializer implements StructuredSerializer<PostItemDto> {
    @override
    final Iterable<Type> types = const [PostItemDto, _$PostItemDto];

    @override
    final String wireName = r'PostItemDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, PostItemDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(int)));
        result
            ..add(r'postedWhen')
            ..add(serializers.serialize(object.postedWhen,
                specifiedType: const FullType(DateTime)));
        result
            ..add(r'title')
            ..add(serializers.serialize(object.title,
                specifiedType: const FullType(String)));
        result
            ..add(r'descriptionStripped')
            ..add(serializers.serialize(object.descriptionStripped,
                specifiedType: const FullType(String)));
        result
            ..add(r'icon')
            ..add(serializers.serialize(object.icon,
                specifiedType: const FullType(String)));
        result
            ..add(r'type')
            ..add(serializers.serialize(object.type,
                specifiedType: const FullType(PostItemDtoTypeEnum)));
        result
            ..add(r'likes')
            ..add(serializers.serialize(object.likes,
                specifiedType: const FullType(int)));
        result
            ..add(r'liked')
            ..add(serializers.serialize(object.liked,
                specifiedType: const FullType(bool)));
        result
            ..add(r'comments')
            ..add(serializers.serialize(object.comments,
                specifiedType: const FullType(int)));
        result
            ..add(r'transactionBalances')
            ..add(serializers.serialize(object.transactionBalances,
                specifiedType: const FullType(BuiltList, [FullType(AccountBalance)])));
        return result;
    }

    @override
    PostItemDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PostItemDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.id = valueDes;
                    break;
                case r'postedWhen':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.postedWhen = valueDes;
                    break;
                case r'title':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.title = valueDes;
                    break;
                case r'descriptionStripped':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.descriptionStripped = valueDes;
                    break;
                case r'icon':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.icon = valueDes;
                    break;
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PostItemDtoTypeEnum)) as PostItemDtoTypeEnum;
                    result.type = valueDes;
                    break;
                case r'likes':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.likes = valueDes;
                    break;
                case r'liked':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.liked = valueDes;
                    break;
                case r'comments':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.comments = valueDes;
                    break;
                case r'transactionBalances':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(AccountBalance)])) as BuiltList<AccountBalance>;
                    result.transactionBalances.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

class PostItemDtoTypeEnum extends EnumClass {

  /// Тип поста
  @BuiltValueEnumConst(wireName: r'NEWS')
  static const PostItemDtoTypeEnum NEWS = _$postItemDtoTypeEnum_NEWS;

  static Serializer<PostItemDtoTypeEnum> get serializer => _$postItemDtoTypeEnumSerializer;

  const PostItemDtoTypeEnum._(String name): super(name);

  static BuiltSet<PostItemDtoTypeEnum> get values => _$postItemDtoTypeEnumValues;
  static PostItemDtoTypeEnum valueOf(String name) => _$postItemDtoTypeEnumValueOf(name);
}

